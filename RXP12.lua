--[[ RXP12 -- lean leveling-guide engine for the WoW 1.12 (vanilla) client.

  Parses RXPGuides-format guide text (the `step` / `.goto` / `.accept` DSL) and
  drives the steps with manual Next/Prev plus best-effort auto-advance off the
  1.12 quest log + level. Quest IDs in guides are resolved to names via a bundled
  quest-name table (Data\QuestNames.lua), since the 1.12 API exposes no quest IDs.

  Fully self-contained: NO external addon dependency. The direction arrow uses a
  bundled sprite sheet (img\arrow.tga) + the native minimap-arrow facing trick.

  This is NOT a port of RXPGuides (that addon is Ace3 + modern-Classic APIs and
  cannot run on Lua 5.0). It's a small native engine that consumes the route data.

  Status: MVP. Syntax-checked only -- not tested in-game yet.
]]--

RXP12 = {}
RXP12.guides = {}        -- name -> parsed guide
RXP12.guideOrder = {}    -- registration order
RXP12.seen = {}          -- quest names ever seen in the log (for turn-in detection)

local PLAYER_CLASS       -- class token, e.g. "MAGE"

-- ---------------------------------------------------------------- helpers ----
local function trim(s)
  if not s then return "" end
  local _, _, c = string.find(s, "^%s*(.-)%s*$")
  return c or s
end

local function Print(msg)
  DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99RXP12|r: "..msg)
end

-- RXP guides use custom colour tokens (|cRXP_FRIENDLY_..|r) that are NOT valid
-- WoW colour codes (which need |cAARRGGBB) -- on 1.12 they render as garbage.
-- Translate them to real colours; anything unknown becomes plain white.
local RXP_COLORS = {
  FRIENDLY = "ff66cc66",  -- NPCs to talk to (green)
  WARN     = "ffff9900",  -- warnings (orange)
  ENEMY    = "ffff5555",  -- hostile mobs (red)
  BUY      = "ffffd100",  -- vendor / buy (gold)
  LOOT     = "ff40c0f0",  -- loot / items (cyan)
  PICK     = "ffcc66ff",  -- gather / pick up (violet)
}
local function Sanitize(s)
  if not s then return s end
  s = string.gsub(s, "|cRXP_(%a+)_", function(t)
    return "|c" .. (RXP_COLORS[t] or "ffffffff")
  end)
  -- vanilla 1.12 does NOT support inline texture escapes (|T..|t) in FontStrings
  -- (added in a later client) -- they render as literal text. Strip them all;
  -- RXP12 shows type icons via real Texture objects instead.
  s = string.gsub(s, "|T[^|]*|t", "")
  return s
end

-- player identity for "<<" class/race/faction step filtering (set at login)
RXP12.me = { class = "", race = "", faction = "" }

local function normalize(s) return string.gsub(string.lower(s or ""), "%s", "") end
local function mymod(a, b) return a - math.floor(a / b) * b end
local function lc(s) return string.lower(trim(s or "")) end

-- format a ".goto" payload for display. The raw form "Zone,58.695,44.266,0,0"
-- (extra radius/flag numbers, 3 decimals) reads messy inline; show clean rounded
-- coords: "Go to Zone (58.7, 44.3)".
local function FormatGoto(raw)
  local f = {}
  for part in string.gfind(raw or "", "[^,]+") do tinsert(f, trim(part)) end
  local zone, x, y
  if f[1] and not tonumber(f[1]) then
    zone = f[1]; x = tonumber(f[2]); y = tonumber(f[3])
  elseif f[3] then
    x = tonumber(f[2]); y = tonumber(f[3])      -- mapid,x,y
  else
    x = tonumber(f[1]); y = tonumber(f[2])       -- x,y (current zone)
  end
  if x and y then
    if zone then return string.format("Go to %s (%.1f, %.1f)", zone, x, y) end
    return string.format("Go to (%.1f, %.1f)", x, y)
  end
  return "Go to "..(raw or "")
end

-- guides gate steps by client/version with "<<" tokens (era/sod/tbc/...). On a
-- 1.12 / Turtle client we ARE vanilla-era content; everything else is absent, so
-- "sod"/"som"/"tbc"/"wotlk"/"cata"/"mop"/"retail"/"df" tokens evaluate false.
local CLIENT_TRAITS = { classic = true, era = true, vanilla = true }
local function MatchToken(tok)
  local nx = normalize(tok)
  return nx == RXP12.me.class or nx == RXP12.me.race or nx == RXP12.me.faction
      or CLIENT_TRAITS[nx] == true
end

-- evaluate an RXP "<<" condition. Grammar:
--   space-separated groups are AND'd; "/" inside a group is OR; "!" negates;
--   a trailing "-- comment" is ignored. e.g. "Human Paladin", "Warrior/Rogue", "!Warlock"
function RXP12.EvalCondition(cond)
  if not cond or cond == "" then return true end
  local c = cond
  local s = string.find(c, "%-%-")              -- strip trailing comment
  if s then c = string.sub(c, 1, s - 1) end
  c = trim(c)
  if c == "" then return true end
  for group in string.gfind(c, "%S+") do
    local anyPos, posMatch, negFail = false, false, false
    for tok in string.gfind(group, "[^/]+") do
      if string.sub(tok, 1, 1) == "!" then
        if MatchToken(string.sub(tok, 2)) then negFail = true end
      else
        anyPos = true
        if MatchToken(tok) then posMatch = true end
      end
    end
    if (anyPos and not posMatch) or negFail then return false end
  end
  return true
end

-- a per-line "<< cond" passes if absent, or its condition matches this character
local function CondOK(c) return (not c) or RXP12.EvalCondition(c) end

-- build the list of steps that apply to this character (after << filtering)
-- weave dungeons: a step ".dungeon X" shows only if X is enabled; ".dungeon !X"
-- / ".dungeonskip X" (the solo-path alternative) is hidden when X is enabled.
function RXP12.DungeonCheck(step)
  local en = RXP12_Save.dungeons or {}
  if step.dungeonskip and en[step.dungeonskip] then return false end
  if step.dungeon and not en[step.dungeon] then return false end
  return true
end

function RXP12.BuildActive()
  RXP12.active = {}
  RXP12.labelIndex = {}      -- step #label -> index in active (for #completewith <label>)
  RXP12.activeStickies = {}  -- index -> true: sticky steps pinned & not yet done
  RXP12.dungeonCodes = {}    -- distinct dungeon codes present in this guide (for the picker)
  local g = RXP12.CurrentGuide()
  if not g then return end
  RXP12.EnsureParsed(g)
  local seenD = {}
  for i = 1, table.getn(g.steps) do
    local st = g.steps[i]
    if st.dungeon and not seenD[st.dungeon] then seenD[st.dungeon] = true; tinsert(RXP12.dungeonCodes, st.dungeon) end
    if st.dungeonskip and not seenD[st.dungeonskip] then seenD[st.dungeonskip] = true; tinsert(RXP12.dungeonCodes, st.dungeonskip) end
    if RXP12.EvalCondition(st.cond) and RXP12.DungeonCheck(st)
        and (not st.maxlevel or UnitLevel("player") <= st.maxlevel) then
      tinsert(RXP12.active, st)
      local s = RXP12.active[table.getn(RXP12.active)]
      if s.label and s.label ~= true then RXP12.labelIndex[s.label] = table.getn(RXP12.active) end
    end
  end
  table.sort(RXP12.dungeonCodes)
  local n = table.getn(RXP12.active)
  if (RXP12_Save.step or 1) > n then RXP12_Save.step = (n > 0 and n) or 1 end
end

-- resolve a quest id to its name via the bundled quest-name DB (Data\QuestNames.lua).
-- 1.12 has no quest ids in the API, so this table bridges guide ids <-> log titles.
-- Returns nil for ids not in the DB (e.g. Turtle-custom quests) -> manual fallback.
local function QuestName(id)
  if not id then return nil end
  return RXP12_QuestDB and RXP12_QuestDB[id] or nil
end

-- ----------------------------------------------------------------- parser ----
-- parse one in-step line into the step table. Besides the engine-facing fields
-- (step.text / step.gotos / step.quests / step.level), each visible line becomes
-- an ordered "element" { kind, text, id, obj } so the UI can show a typed icon
-- per line (accept/turnin/goto/vendor/...) the way RXP does.
function RXP12.ParseLine(step, t)
  -- a trailing "<< cond" applies that condition to THIS line only (per-line filter,
  -- e.g. ">>train Battle Shout << Warrior"). Evaluated per-character at use time,
  -- not at parse time (player identity is set only after guides load). Strip it here.
  local lineCond
  local cp = string.find(t, "<<", 1, true)
  if cp then
    lineCond = trim(string.sub(t, cp + 2))
    t = trim(string.sub(t, 1, cp - 1))
    if lineCond == "" then lineCond = nil end
  end
  local pre, disp
  local s, e = string.find(t, ">>", 1, true)
  if s then
    pre = trim(string.sub(t, 1, s - 1))
    disp = trim(string.sub(t, e + 1))
  else
    pre = t
  end
  if disp == "" then disp = nil end
  if disp then tinsert(step.text, Sanitize(disp)) end

  local kind, etext, eid, eobj = nil, disp, nil, nil

  if pre == "" then
    if disp then kind = "note" end                       -- a plain ">>text" note
  else
    local first = string.sub(pre, 1, 1)
    if first == "." then
      local _, _, cmd, rest = string.find(pre, "^%.(%S+)%s*(.*)")
      if cmd == "goto" then
        tinsert(step.gotos, rest)
        kind = "goto"; etext = disp or FormatGoto(rest)
      elseif cmd == "accept" or cmd == "complete" or cmd == "turnin" then
        -- RXP form: ".accept <id>", ".turnin <id>", ".complete <id>,<objective>"
        local _, _, id, obj = string.find(rest, "(%d+),?(%d*)")
        eid = tonumber(id); eobj = tonumber(obj)
        tinsert(step.quests, { action = cmd, id = eid, obj = eobj, cond = lineCond })
        kind = cmd
        if not etext then
          -- no ">>text": prefer the line's trailing "--comment" (RXP guides use it
          -- to describe the objective, e.g. "Kill Young Nightsaber (x7)"). This also
          -- keeps multiple .complete objectives distinct instead of rendering as
          -- identical "Complete: <quest>" lines.
          local _, _, cmt = string.find(rest, "%-%-%s*(.+)")
          if cmt and trim(cmt) ~= "" then
            etext = trim(cmt)
          else
            local nm = QuestName(eid)
            local verb = (cmd == "accept" and "Accept") or (cmd == "turnin" and "Turn in") or "Complete"
            etext = verb..(nm and (": "..nm) or (" quest "..(eid or "?")))
          end
        end
      elseif cmd == "fp" or cmd == "getfp" then kind = "fp"; etext = disp or "Get the flight point"
      elseif cmd == "fly" or cmd == "taxi" then kind = "fly"; etext = disp or ("Fly to "..rest)
      elseif cmd == "vendor" or cmd == "buy" then kind = "vendor"; etext = disp or (rest ~= "" and rest) or "Vendor"
      elseif cmd == "train" or cmd == "trainer" then kind = "train"; etext = disp or "Train your spells"
      elseif cmd == "hearth" or cmd == "sethearth" or cmd == "home" then kind = "hearth"; etext = disp or "Hearthstone"
      elseif cmd == "xp" then
        -- ".xp <level>" = grind until that level; treat it as a level gate so the
        -- step auto-completes on ding (else it sits as a stuck text-only step).
        local _, _, lvl = string.find(rest, "(%d+)")
        lvl = tonumber(lvl)
        if lvl and lvl >= 1 and lvl <= 60 then step.level = step.level or lvl end
        kind = "level"; etext = disp or ("Grind to level "..(lvl or "?"))
      elseif cmd == "dungeon" or cmd == "dungeonskip" then
        local _, _, code = string.find(rest, "^(%S+)")
        if code then
          if cmd == "dungeonskip" then step.dungeonskip = string.upper(code)
          elseif string.sub(code, 1, 1) == "!" then step.dungeonskip = string.upper(string.sub(code, 2))
          else step.dungeon = string.upper(code) end
        end
      elseif cmd == "maxlevel" then
        local _, _, ml = string.find(rest, "(%d+)")
        if ml then step.maxlevel = tonumber(ml) end       -- hide once you outlevel it
      elseif disp then kind = "note"; etext = disp        -- any other command, show its text only
      end
    elseif first == "#" then
      local _, _, key, val = string.find(pre, "^#(%S+)%s*(.*)")
      if key == "level" then
        step.level = tonumber(val); kind = "level"; etext = disp or ("Reach level "..(val or "?"))
      elseif key then
        step[key] = (val ~= "" and val) or true
      end
    elseif first == "+" then
      kind = "note"; etext = string.sub(pre, 2)
      tinsert(step.text, Sanitize(etext))
    end
  end

  if kind and etext and etext ~= "" then
    tinsert(step.elements, { kind = kind, text = Sanitize(etext), id = eid, obj = eobj, cond = lineCond })
  end
end

-- parse a full RXP-format guide string into { name, steps = { ... } }
-- detect a guide's faction from its group/name/defaultfor text. Era.lua bundles
-- both factions with no per-file guard, so this keeps the cog menu + auto-detect
-- to the player's faction. nil = neutral (shown to both, e.g. dungeon/T0.5 sets).
local function GuideFaction(g)
  local txt = string.lower((g.group or "").." "..(g.name or "").." "..(g.defaultfor or ""))
  local a = string.find(txt, "alliance", 1, true) or string.find(txt, "(a)", 1, true)
  local h = string.find(txt, "horde", 1, true) or string.find(txt, "(h)", 1, true)
  if a and not h then return "alliance" end
  if h and not a then return "horde" end
  return nil
end

function RXP12.Parse(text, headerOnly)
  local guide = { name = "Unnamed", steps = {} }
  local step = nil
  for line in string.gfind(text, "[^\r\n]+") do
    local t = trim(line)
    if t ~= "" then
      if string.find(t, "^step") then
        if headerOnly then break end
        step = { text = {}, gotos = {}, quests = {}, elements = {}, level = nil, cond = nil }
        local _, _, cond = string.find(t, "^step%s*<<%s*(.*)")
        if cond and cond ~= "" then step.cond = cond end
        tinsert(guide.steps, step)
        step.gindex = table.getn(guide.steps)   -- stable id for persisted completion
      elseif not step then
        -- header directives (before the first step)
        local _, _, key, val = string.find(t, "^#(%S+)%s*(.*)")
        if key == "name" then
          guide.name = trim(val)
          -- a leading "N-M" level range in the name drives auto-detection
          local _, _, lo, hi = string.find(guide.name, "(%d+)%s*%-%s*(%d+)")
          if lo then guide.lo = tonumber(lo); guide.hi = tonumber(hi) end
        elseif key == "defaultfor" then guide.defaultfor = trim(val)   -- race/class this guide starts
        elseif key == "group" then                                    -- category (Leveling/Endgame/...)
          local gv = trim(val)
          local gp = string.find(gv, "<<", 1, true)
          if gp then gv = trim(string.sub(gv, 1, gp - 1)) end
          guide.group = gv
        elseif key == "subgroup" then                                  -- subcategory within the group
          local v = trim(val)
          local _, _, nm, cond = string.find(v, "^(.-)%s*<<%s*(.*)$")
          if cond and cond ~= "" then
            -- conditional (e.g. per class); resolved at menu time when identity is known
            guide.subgroupCond = guide.subgroupCond or {}
            tinsert(guide.subgroupCond, { name = trim(nm), cond = trim(cond) })
          else
            guide.subgroup = v
          end
        elseif key == "next" then guide.nextguide = trim(val)          -- chains to the next guide
        end
      else
        RXP12.ParseLine(step, t)
      end
    end
  end
  guide.faction = GuideFaction(guide)
  return guide
end

-- lazily full-parse a guide's steps the first time it's selected, so we can
-- register hundreds of guides (Era.lua) cheaply at load with only their headers.
function RXP12.EnsureParsed(g)
  if not g or g.parsed then return end
  g.parsed = true
  if not g.raw then g.steps = g.steps or {}; return end
  local ok, full = pcall(RXP12.Parse, g.raw)
  g.steps = (ok and full and full.steps) or {}
end

function RXP12.RegisterGuide(text)
  if type(text) ~= "string" then return end
  local ok, guide = pcall(RXP12.Parse, text, true)   -- header only; steps parsed on demand
  if not ok or not guide then return end
  guide.raw = text
  if not RXP12.guides[guide.name] then tinsert(RXP12.guideOrder, guide.name) end
  RXP12.guides[guide.name] = guide
end

-- accept RXP guide data files dropped in unchanged (they call this global),
-- as long as the real RXPGuides addon hasn't already claimed it
if type(RXPGuides) ~= "table" then RXPGuides = {} end
if type(RXPGuides.RegisterGuide) ~= "function" then
  RXPGuides.RegisterGuide = RXP12.RegisterGuide
end

-- ----------------------------------------------------------------- engine ----
function RXP12.CurrentGuide()
  return RXP12_Save and RXP12_Save.guide and RXP12.guides[RXP12_Save.guide] or nil
end

function RXP12.CurrentStep()
  return RXP12.active and RXP12.active[RXP12_Save.step or 1] or nil
end

function RXP12.SetStep(i)
  if not RXP12.active then return end
  local n = table.getn(RXP12.active)
  if n == 0 then return end
  if i < 1 then i = 1 end
  if i > n then i = n end
  RXP12_Save.step = i
  RXP12.UpdateUI()
end

function RXP12.Advance() RXP12.SetStep((RXP12_Save.step or 1) + 1) end
function RXP12.Back()    RXP12.SetStep((RXP12_Save.step or 1) - 1) end

-- parse a ".goto" payload -> zoneName(or nil), mapid(or nil), x, y
-- forms: "Zone Name,x,y[,r]" | "x,y" | "mapid,x,y[,r]"
local function ParseGoto(raw)
  local f = {}
  for part in string.gfind(raw, "[^,]+") do tinsert(f, trim(part)) end
  if table.getn(f) < 2 then return nil end
  if tonumber(f[1]) then
    if table.getn(f) >= 3 then
      return nil, tonumber(f[1]), tonumber(f[2]), tonumber(f[3])   -- mapid,x,y
    end
    return nil, nil, tonumber(f[1]), tonumber(f[2])                -- x,y (current zone)
  end
  return f[1], nil, tonumber(f[2]), tonumber(f[3])                 -- zoneName,x,y
end

-- World-map pin integration was removed with the pfQuest dependency. The on-screen
-- direction arrow (RXP12Arrow) handles navigation natively. Kept as a no-op so the
-- existing call sites don't need to change; a native world-map pin may return later.
function RXP12.SetWaypoint(step)
end

-- Native player facing for the arrow (no pfQuest / SuperWoW needed). On 1.12 the
-- minimap player-arrow is an unnamed Model child of Minimap whose :GetFacing()
-- gives the heading; if the minimap is set to rotate, read the compass ring instead.
-- (Same trick pfQuest uses in compat/client.lua.)
local minimapArrow
local function FindMinimapArrow()
  local kids = { Minimap:GetChildren() }
  for k = 1, table.getn(kids) do
    local v = kids[k]
    if v and v.IsObjectType and v:IsObjectType("Model") and not v:GetName() then
      local m = v:GetModel()
      if m and string.find(string.lower(m), "interface\\minimap\\minimaparrow") then
        return v
      end
    end
  end
  return kids[9]   -- pfQuest's fallback: the arrow is usually the 9th child
end
local function GetPlayerFacing()
  if not minimapArrow then minimapArrow = FindMinimapArrow() end
  -- some clients (e.g. Turtle) lack the "rotateMinimap" cvar and GetCVar ERRORS
  -- on an unknown cvar, so probe it safely; default to the non-rotating path.
  local rotating = false
  if GetCVar then
    local ok, v = pcall(GetCVar, "rotateMinimap")
    if ok and v == "1" then rotating = true end
  end
  if rotating and MiniMapCompassRing then
    return MiniMapCompassRing:GetFacing() * -1
  elseif minimapArrow and minimapArrow.GetFacing then
    return minimapArrow:GetFacing()
  end
  return 0
end

-- On-screen direction arrow pointing at the current step's first .goto.
-- Uses RXP12's own bundled arrow sprite-sheet + the native GetPlayerFacing above;
-- the angle->cell math is copied verbatim from pfQuest/TomTomVanilla (proven).
local SHEET = "Interface\\AddOns\\RXP12\\img\\arrow"
local arrowThrottle = 0

function RXP12.ArrowUpdate(elapsed)
  if not RXP12Arrow then return end
  arrowThrottle = arrowThrottle - (elapsed or 0)
  if arrowThrottle > 0 then return end
  arrowThrottle = 0.05
  local model = getglobal("RXP12ArrowModel")
  local txt = getglobal("RXP12ArrowText")

  if RXP12_Save and RXP12_Save.arrow == false then model:Hide(); txt:SetText(""); return end

  local step = RXP12.CurrentStep()
  local gs = step and step.gotos and step.gotos[1]
  if not gs then model:Hide(); txt:SetText(""); return end
  local zone, mapid, tx, ty = ParseGoto(gs)
  if not tx or not ty then model:Hide(); txt:SetText(""); return end

  if WorldMapFrame and not WorldMapFrame:IsVisible() then SetMapToCurrentZone() end

  -- different zone than the player: can't point in-zone, show the destination
  if zone and string.lower(zone) ~= string.lower(GetRealZoneText() or "") then
    model:Show(); model:SetTexCoord(0, 0.109375, 0, 0.08203125)
    txt:SetText("|cffffd200> "..zone.."|r"); return
  end

  local px, py = GetPlayerMapPosition("player")
  if px == 0 and py == 0 then model:Hide(); txt:SetText(""); return end

  local ddx, ddy = tx - px*100, ty - py*100
  local dist = math.sqrt(ddx*ddx + ddy*ddy)
  local dir = atan2(ddx*1.5, -(ddy))
  dir = dir > 0 and (math.pi*2) - dir or -dir
  if dir < 0 then dir = dir + 360 end
  local angle = math.rad(dir) - GetPlayerFacing()
  local cell = mymod(math.floor(angle / (math.pi*2) * 108 + 0.5), 108)
  local column, row = mymod(cell, 9), math.floor(cell / 9)
  model:SetTexCoord((column*56)/512, ((column+1)*56)/512, (row*42)/512, ((row+1)*42)/512)
  model:Show()
  if dist < 1 then txt:SetText("|cff66cc66Arrived|r")
  else txt:SetText(string.format("%d", dist)) end
end

local function CreateArrow()
  if RXP12Arrow then return end
  local a = CreateFrame("Frame", "RXP12Arrow", UIParent)
  a:SetWidth(48); a:SetHeight(36)
  if RXP12_Save.arrowpos then
    a:SetPoint("CENTER", UIParent, "BOTTOMLEFT", RXP12_Save.arrowpos.x, RXP12_Save.arrowpos.y)
  else
    a:SetPoint("CENTER", UIParent, "CENTER", 0, -140)
  end
  a:SetMovable(true); a:EnableMouse(true); a:RegisterForDrag("LeftButton")
  a:SetScript("OnDragStart", function() this:StartMoving() end)
  a:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
    RXP12_Save.arrowpos = { x = this:GetLeft() + this:GetWidth()/2, y = this:GetBottom() + this:GetHeight()/2 }
  end)
  local model = a:CreateTexture("RXP12ArrowModel", "ARTWORK")
  model:SetTexture(SHEET)
  model:SetTexCoord(0, 0.109375, 0, 0.08203125)
  model:SetAllPoints()
  local txt = a:CreateFontString("RXP12ArrowText", "OVERLAY", "GameFontNormalSmall")
  txt:SetPoint("TOP", a, "BOTTOM", 0, -2)
  -- frame stays shown so OnUpdate keeps firing (hidden frames don't update);
  -- the model/text hide themselves when there's nothing to point at.
  a:SetScript("OnUpdate", function() RXP12.ArrowUpdate(arg1) end)
end

-- snapshot the live quest log keyed by lowercased title:
--   log[name] = { idx = logIndex, complete = bool }
-- also records every seen title (for turn-in = seen-then-gone detection).
-- Guide quest ids are matched to this by resolving id -> name via the bundled DB.
local function BuildQuestLog()
  local log = {}
  local n = GetNumQuestLogEntries()
  for i = 1, n do
    local title, _, _, isHeader, _, isComplete = GetQuestLogTitle(i)
    if title and not isHeader then
      local key = lc(title)
      log[key] = { idx = i, complete = (isComplete == 1) }
      RXP12.seen[key] = true
    end
  end
  return log
end

-- is objective `obj` of the quest at log index `li` finished?
-- uses SelectQuestLogEntry + restore (portable: works on Kronos and Turtle)
local function ObjectiveDone(li, obj)
  if not (li and obj) then return nil end
  local sel = GetQuestLogSelection()
  SelectQuestLogEntry(li)
  local _, _, done = GetQuestLogLeaderBoard(obj)
  if sel then SelectQuestLogEntry(sel) end
  return done
end

-- is a step already satisfied? text-only steps (no quests, no level) are never
-- "auto-done" -- they need a manual Next so we don't skip instructions.
function RXP12.IsStepDone(step, log)
  if not step then return false end
  if step.level and UnitLevel("player") >= step.level then return true end
  if table.getn(step.quests) == 0 then return false end
  if not log then return false end
  local any = false
  for k = 1, table.getn(step.quests) do
    local q = step.quests[k]
    if CondOK(q.cond) then                                    -- per-line "<< cond" gate
      any = true
      local nm = QuestName(q.id)
      if not nm then return false end                        -- id not in DB -> can't auto-track
      local key = lc(nm)
      local entry = log[key]
      if q.action == "accept" then
        if not entry then return false end                   -- quest not in log yet
      elseif q.action == "complete" then
        if not entry then return false                       -- not even accepted
        elseif q.obj then
          if not ObjectiveDone(entry.idx, q.obj) then return false end -- objective not done
        elseif not entry.complete then return false end       -- whole quest not complete
      elseif q.action == "turnin" then
        if not (RXP12.seen[key] and not entry) then return false end -- seen, now gone = turned in
      end
    end
  end
  if not any then return false end                            -- no applicable quest -> manual step
  return true
end

-- is the step at active index `i` done? resolves "#completewith next" (done when
-- the following step is done) and "#completewith <label>" (done when the labelled
-- step is done) by delegating; depth-guarded against cycles. Falls back to the
-- step's own completion otherwise.
-- persisted completion: once a step is AUTO-detected done, remember it per guide so
-- it stays skipped after /reload (covers turn-ins the quest log no longer shows).
-- Only SkipForward records these -- never a manual jump.
function RXP12.IsDoneStored(s)
  if not s or not s.gindex or not RXP12_Save.guide then return false end
  local d = RXP12_Save.done and RXP12_Save.done[RXP12_Save.guide]
  return (d and d[s.gindex]) and true or false
end
function RXP12.RecordDone(s)
  if not s or not s.gindex or not RXP12_Save.guide then return end
  RXP12_Save.done[RXP12_Save.guide] = RXP12_Save.done[RXP12_Save.guide] or {}
  RXP12_Save.done[RXP12_Save.guide][s.gindex] = true
end

function RXP12.StepDoneByIndex(i, log, depth)
  depth = (depth or 0) + 1
  if depth > 30 then return false end
  local s = RXP12.active and RXP12.active[i]
  if not s then return false end
  if RXP12.IsDoneStored(s) then return true end
  if s.completewith and s.completewith ~= true then
    local target
    if s.completewith == "next" then target = i + 1
    else target = RXP12.labelIndex and RXP12.labelIndex[s.completewith] end
    if target and target ~= i then
      return RXP12.StepDoneByIndex(target, log, depth)
    end
  end
  return RXP12.IsStepDone(s, log)
end

-- advance past every consecutive already-completed step (handles auto-advance,
-- resuming a guide, and doing quests out of order). Sticky steps are not dwelt
-- on: when reached they're pinned (shown alongside the current step) until their
-- own condition is met, and we move on to the next non-sticky step. Stops at the
-- first step that isn't done/sticky, or the last step.
function RXP12.SkipForward()
  if not RXP12.active then return end
  RXP12.activeStickies = RXP12.activeStickies or {}
  local log = BuildQuestLog()   -- also records "seen" titles
  local n = table.getn(RXP12.active)

  -- unpin any sticky whose condition has since been satisfied
  for idx in pairs(RXP12.activeStickies) do
    if RXP12.StepDoneByIndex(idx, log) then RXP12.activeStickies[idx] = nil end
  end

  local guard = 0
  while (RXP12_Save.step or 1) < n and guard < 2000 do
    guard = guard + 1
    local i = RXP12_Save.step or 1
    local s = RXP12.active[i]
    if s and s.sticky then
      -- pin it (unless already satisfied) and step over it
      if RXP12.StepDoneByIndex(i, log) then RXP12.RecordDone(s) else RXP12.activeStickies[i] = true end
      RXP12_Save.step = i + 1
    elseif RXP12.StepDoneByIndex(i, log) then
      RXP12.RecordDone(s)                 -- auto-completed -> remember across reloads
      RXP12_Save.step = i + 1
    else
      break
    end
  end
  RXP12.UpdateUI()
end

function RXP12.CheckAuto()
  RXP12.SkipForward()
end

-- ------------------------------------------------- auto quest interaction ----
-- Opt-in (RXP12_Save.auto): when you talk to an NPC, auto-accept the quests the
-- guide wants here and auto-turn-in the ones it expects, incl. picking the reward
-- when there's no choice. 1.12 has NO secure/taint system, so this is allowed in
-- combat too. We only act on quests the CURRENT step / pinned stickies / the next
-- few steps reference (matched by NAME via the bundled DB), so unrelated quests are
-- left alone. Quests with a CHOICE of rewards are left for you to pick.

-- titles the guide wants right now: accept set + turnin set (lowercased)
function RXP12.WantedQuests()
  local accept, turnin = {}, {}
  if not RXP12.active then return accept, turnin end
  local cur = RXP12_Save.step or 1
  local idxs = {}
  for d = 0, 5 do idxs[cur + d] = true end          -- current + small lookahead (NPC chains)
  if RXP12.activeStickies then
    for k in pairs(RXP12.activeStickies) do idxs[k] = true end
  end
  for i in pairs(idxs) do
    local s = RXP12.active[i]
    if s and s.quests then
      for k = 1, table.getn(s.quests) do
        local q = s.quests[k]
        local nm = CondOK(q.cond) and QuestName(q.id)
        if nm then
          if q.action == "accept" then accept[lc(nm)] = true
          elseif q.action == "turnin" then turnin[lc(nm)] = true end
        end
      end
    end
  end
  return accept, turnin
end

-- vanilla 1.12 has NO GetNumGossip*Quests (those came in 2.0) -- calling them
-- ERRORS on a 1.12/Turtle client. GetGossipAvailableQuests/GetGossipActiveQuests
-- return a flat list where each quest's group begins with its title STRING (level
-- etc. are numbers/booleans). Collect the strings in order: the k-th title is
-- gossip quest index k -- so we need neither a count function nor the stride.
local function GossipQuestList(getter)
  local out = {}
  if type(getter) ~= "function" then return out end
  local all = { getter() }
  for i = 1, table.getn(all) do
    if type(all[i]) == "string" and all[i] ~= "" then tinsert(out, all[i]) end
  end
  return out
end

-- handle a quest/gossip frame event when auto mode is on. pcall'd by caller.
function RXP12.HandleQuestEvent(e)
  if RXP12.debug then
    local na = table.getn(GossipQuestList(GetGossipAvailableQuests))
    Print("|cff88ccff[dbg]|r "..e.." auto="..tostring(RXP12_Save and RXP12_Save.auto)
      .." title='"..tostring((GetTitleText and GetTitleText()) or "").."' gossipAvail="..tostring(na))
  end
  if not RXP12_Save or not RXP12_Save.auto then return end
  local accept, turnin = RXP12.WantedQuests()
  if RXP12.debug then
    local list = ""
    for k in pairs(accept) do list = list..k.."; " end
    Print("|cff88ccff[dbg]|r want-accept: "..(list ~= "" and list or "(none)"))
  end

  if e == "QUEST_DETAIL" then
    if accept[lc(GetTitleText())] then AcceptQuest() end

  elseif e == "QUEST_PROGRESS" then
    if turnin[lc(GetTitleText())] and IsQuestCompletable() then CompleteQuest() end

  elseif e == "QUEST_COMPLETE" then
    if turnin[lc(GetTitleText())] and GetNumQuestChoices() <= 1 then
      GetQuestReward(1)   -- 1 is safe for 0 or 1 reward; choices are left to you
    end

  elseif e == "QUEST_GREETING" then
    -- multi-quest greeting panel: clean per-index title API, no stride needed
    for i = 1, GetNumActiveQuests() do
      local t = GetActiveTitle(i)
      if t and turnin[lc(t)] then SelectActiveQuest(i); return end
    end
    for i = 1, GetNumAvailableQuests() do
      local t = GetAvailableTitle(i)
      if t and accept[lc(t)] then SelectAvailableQuest(i); return end
    end

  elseif e == "GOSSIP_SHOW" then
    local act = GossipQuestList(GetGossipActiveQuests)
    for i = 1, table.getn(act) do
      if turnin[lc(act[i])] then SelectGossipActiveQuest(i); return end
    end
    local av = GossipQuestList(GetGossipAvailableQuests)
    for i = 1, table.getn(av) do
      if accept[lc(av[i])] then SelectGossipAvailableQuest(i); return end
    end
  end
end

-- objective progress lines for a step's quests, read from the quest log by name
-- (e.g. "  - Boar Hide: 3/8"); green when that objective is done. Uses the bundled
-- DB for the id->name lookup. Self-contained: restores the log selection.
local function ObjectiveLines(step)
  local out = {}
  if not step or table.getn(step.quests) == 0 then return out end
  local sel = GetQuestLogSelection()
  local total = GetNumQuestLogEntries()
  for k = 1, table.getn(step.quests) do
    local q = step.quests[k]
    if CondOK(q.cond) and (q.action == "complete" or q.action == "accept") then
      local want = QuestName(q.id)
      if want then
        want = lc(want)
        for i = 1, total do
          local title, _, _, isHeader = GetQuestLogTitle(i)
          if title and not isHeader and lc(title) == want then
            SelectQuestLogEntry(i)
            for j = 1, GetNumQuestLeaderBoards() do
              if (not q.obj) or j == q.obj then
                local txt, _, done = GetQuestLogLeaderBoard(j)
                if txt and txt ~= "" then
                  tinsert(out, (done and "|cff66cc66" or "|cffcccccc").."  - "..txt.."|r")
                end
              end
            end
            break
          end
        end
      end
    end
  end
  if sel then SelectQuestLogEntry(sel) end
  return out
end

-- ---------------------------------------------------------------------- UI ----
-- RXP-style scrolling step list. Each step is a "card": a numbered badge in the
-- left gutter + content on the right. Each content line carries a typed inline
-- icon (accept/turnin/goto/vendor/...). The current step is expanded into one
-- checkbox row per element (tick to mark done; all ticked -> auto-advance) plus
-- live objective progress and a progress bar; other steps are compact one-liners.
RXP12.rows = RXP12.rows or {}
RXP12.rowY = RXP12.rowY or {}
local ROW_WIDTH = 312
local GUTTER = 26                       -- left column for the step-number badge
local CONTENT_X = GUTTER + 4
local CONTENT_W = ROW_WIDTH - CONTENT_X - 6

-- typed icons -- all stock 1.12 texture paths, drawn as real Texture objects
-- (1.12 FontStrings can't render inline |T..|t escapes)
local KIND_ICON = {
  accept   = "Interface\\GossipFrame\\AvailableQuestIcon",
  turnin   = "Interface\\GossipFrame\\ActiveQuestIcon",
  complete = "Interface\\GossipFrame\\BattleMasterGossipIcon",
  goto     = "Interface\\Minimap\\MinimapArrow",
  vendor   = "Interface\\GossipFrame\\VendorGossipIcon",
  fp       = "Interface\\GossipFrame\\TaxiGossipIcon",
  fly      = "Interface\\GossipFrame\\TaxiGossipIcon",
  train    = "Interface\\GossipFrame\\TrainerGossipIcon",
  hearth   = "Interface\\Icons\\INV_Misc_Rune_01",
}
-- text only -- the type icon is drawn as a real Texture beside the line, since
-- 1.12 FontStrings can't render inline |T..|t escapes.
local function ElementLine(el)
  if el.kind == "level" then return "|cff88ccff"..(el.text or "").."|r" end
  return el.text or ""
end

-- class icon coords on the stock character-create class sheet
local CLASS_TC = {
  WARRIOR={0,0.25,0,0.25},   MAGE={0.25,0.5,0,0.25},   ROGUE={0.5,0.75,0,0.25}, DRUID={0.75,1,0,0.25},
  HUNTER={0,0.25,0.25,0.5},  SHAMAN={0.25,0.5,0.25,0.5}, PRIEST={0.5,0.75,0.25,0.5}, WARLOCK={0.75,1,0.25,0.5},
  PALADIN={0,0.25,0.5,0.75},
}

-- measure a wrapped FontString's height (1.12 has no GetStringHeight)
local function FSHeight(fs)
  if fs.GetStringHeight then local h = fs:GetStringHeight(); if h and h > 0 then return h end end
  local h = fs:GetHeight(); if h and h > 0 then return h end
  local _, breaks = string.gsub(fs:GetText() or "", "\n", "")
  return (breaks + 1) * 12
end

-- overall objective progress for a step (done, total) read from the quest log
local function ObjectiveProgress(step)
  local done, total = 0, 0
  if not step or table.getn(step.quests) == 0 then return 0, 0 end
  local sel = GetQuestLogSelection()
  local n = GetNumQuestLogEntries()
  for k = 1, table.getn(step.quests) do
    local q = step.quests[k]
    local nm = CondOK(q.cond) and QuestName(q.id)
    if nm and (q.action == "complete" or q.action == "accept") then
      nm = lc(nm)
      for i = 1, n do
        local title, _, _, isHeader = GetQuestLogTitle(i)
        if title and not isHeader and lc(title) == nm then
          SelectQuestLogEntry(i)
          for j = 1, GetNumQuestLeaderBoards() do
            if (not q.obj) or j == q.obj then
              local txt, _, d = GetQuestLogLeaderBoard(j)
              -- prefer the "x / y" counts in the objective text so the bar fills
              -- per kill; fall back to the done flag for uncounted objectives.
              local _, _, have, need = string.find(txt or "", "(%d+)%s*/%s*(%d+)")
              if have and tonumber(need) and tonumber(need) > 0 then
                done = done + tonumber(have); total = total + tonumber(need)
              else
                total = total + 1; if d then done = done + 1 end
              end
            end
          end
          break
        end
      end
    end
  end
  if sel then SelectQuestLogEntry(sel) end
  return done, total
end

-- a per-element checkbox row (used only for the current step's expanded card)
local function GetElemRow(r, j)
  r.elems = r.elems or {}
  if r.elems[j] then return r.elems[j] end
  local er = CreateFrame("Button", nil, r)
  er.check = CreateFrame("CheckButton", nil, er, "UICheckButtonTemplate")
  er.check:SetWidth(18); er.check:SetHeight(18)
  er.check:SetPoint("TOPLEFT", er, "TOPLEFT", 0, 0)
  er.icon = er:CreateTexture(nil, "OVERLAY")
  er.icon:SetWidth(13); er.icon:SetHeight(13)
  er.icon:SetPoint("TOPLEFT", er, "TOPLEFT", 21, -2)
  er.icon:Hide()
  er.fs = er:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  er.fs:SetPoint("TOPLEFT", er, "TOPLEFT", 22, -2)
  er.fs:SetWidth(CONTENT_W - 22)
  er.fs:SetJustifyH("LEFT"); er.fs:SetJustifyV("TOP")
  er:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
  local function toggle()
    local el = er.element
    if el then el.checked = er.check:GetChecked() and true or false end
    if r.onToggle then r.onToggle() end
  end
  er._onclick = function() er.check:SetChecked(not er.check:GetChecked()); toggle() end
  er.check:SetScript("OnClick", toggle)
  er:SetScript("OnClick", er._onclick)
  er:SetScript("OnMouseUp", function() if arg1 == "RightButton" then RXP12.OpenMenu(er:GetParent().stepIndex, "cursor") end end)
  er:SetScript("OnEnter", function()
    if er.tip then GameTooltip:SetOwner(er, "ANCHOR_RIGHT"); GameTooltip:SetText(er.tip, 1, 1, 1, 1, 1); GameTooltip:Show() end
  end)
  er:SetScript("OnLeave", function() GameTooltip:Hide() end)
  r.elems[j] = er
  return er
end

local function GetRow(i)
  if RXP12.rows[i] then return RXP12.rows[i] end
  local r = CreateFrame("Button", "RXP12Row"..i, RXP12ScrollChild)
  r:SetWidth(ROW_WIDTH)
  r.bg = r:CreateTexture(nil, "BACKGROUND"); r.bg:SetAllPoints(); r.bg:Hide()
  r.accent = r:CreateTexture(nil, "BORDER")          -- left accent bar
  r.accent:SetPoint("TOPLEFT", r, "TOPLEFT", 0, 0)
  r.accent:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", 0, 0)
  r.accent:SetWidth(3); r.accent:Hide()
  r.sep = r:CreateTexture(nil, "ARTWORK")            -- bottom separator
  r.sep:SetPoint("BOTTOMLEFT", r, "BOTTOMLEFT", CONTENT_X, 0)
  r.sep:SetPoint("BOTTOMRIGHT", r, "BOTTOMRIGHT", -4, 0)
  r.sep:SetHeight(1); r.sep:SetTexture(1, 1, 1, 0.07)
  -- numbered badge chip
  r.badgeBg = r:CreateTexture(nil, "BORDER")
  r.badgeBg:SetPoint("TOPLEFT", r, "TOPLEFT", 4, -4)
  r.badgeBg:SetWidth(GUTTER - 6); r.badgeBg:SetHeight(16)
  r.badgeBg:SetTexture(0.25, 0.25, 0.3, 0.7)
  r.num = r:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
  r.num:SetPoint("CENTER", r.badgeBg, "CENTER", 0, 0)
  r.check = r:CreateTexture(nil, "OVERLAY")           -- done check over the badge
  r.check:SetAllPoints(r.badgeBg)
  r.check:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
  r.check:Hide()
  -- compact body (non-current steps)
  r.fs = r:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -4)
  r.fs:SetWidth(CONTENT_W)
  r.fs:SetJustifyH("LEFT"); r.fs:SetJustifyV("TOP")
  r.kindIcon = r:CreateTexture(nil, "OVERLAY")     -- primary type icon (compact rows)
  r.kindIcon:SetWidth(13); r.kindIcon:SetHeight(13)
  r.kindIcon:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -4)
  r.kindIcon:Hide()
  -- progress bar (current step)
  r.bar = CreateFrame("StatusBar", nil, r)
  r.bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
  r.bar:SetStatusBarColor(0.2, 0.7, 0.2)
  r.bar:SetHeight(6); r.bar:SetMinMaxValues(0, 1)
  r.bar.bg = r.bar:CreateTexture(nil, "BACKGROUND"); r.bar.bg:SetAllPoints(); r.bar.bg:SetTexture(0, 0, 0, 0.5)
  r.bar:Hide()
  r:SetHighlightTexture("Interface\\Buttons\\WHITE8X8")
  local hl = r:GetHighlightTexture(); if hl then hl:SetVertexColor(1, 1, 1, 0.08) end
  -- left-click does nothing; RIGHT-click opens the menu (with a "Go to step" option)
  r:SetScript("OnMouseUp", function()
    if arg1 == "RightButton" then RXP12.OpenMenu(this.stepIndex, "cursor") end
  end)
  r:SetScript("OnEnter", function()
    if this.tip then GameTooltip:SetOwner(this, "ANCHOR_RIGHT"); GameTooltip:SetText(this.tip, 1, 1, 1, 1, 1); GameTooltip:Show() end
  end)
  r:SetScript("OnLeave", function() GameTooltip:Hide() end)
  RXP12.rows[i] = r
  return r
end

-- lay out one step's row; returns its height. mode: current renders the expanded
-- checkbox card, others render the compact line.
local function RenderRow(r, step, i, cur)
  local active = RXP12.activeStickies and RXP12.activeStickies[i]
  local isCur = (i == cur)
  r.stepIndex = i

  -- badge + status styling
  r.num:SetText(tostring(i))
  if isCur then
    r.bg:Show(); r.bg:SetTexture(0.16, 0.42, 0.85, 0.30)
    r.accent:Show(); r.accent:SetTexture(0.3, 1, 0.3, 0.9)
    r.check:Hide(); r.num:Show()
  elseif active then
    r.bg:Show(); r.bg:SetTexture(0.85, 0.7, 0.1, 0.14)
    r.accent:Show(); r.accent:SetTexture(1, 0.8, 0.1, 0.9)
    r.check:Hide(); r.num:Show()
  else
    r.bg:Hide(); r.accent:Hide()
    if i < cur then r.check:Show(); r.num:Hide() else r.check:Hide(); r.num:Show() end
  end
  local dim = (i < cur and not active)
  r.num:SetAlpha(dim and 0.5 or 1)

  local h
  if isCur then
    -- expanded: one checkbox row per element + objective lines + progress bar
    r.fs:Hide(); r.kindIcon:Hide()
    local y = 2
    local els = step.elements or {}
    local nEls = table.getn(els)
    local vis = 0
    for j = 1, nEls do
      local el = els[j]
      if CondOK(el.cond) then                                -- per-line "<< cond" gate
        vis = vis + 1
        local er = GetElemRow(r, vis)
        er.element = el
        er.tip = el.text
        er.check:Show()
        er:SetScript("OnClick", er._onclick)
        local ip = KIND_ICON[el.kind]
        local fx = 22
        if ip then er.icon:SetTexture(ip); er.icon:Show(); fx = 37 else er.icon:Hide() end
        er.fs:ClearAllPoints(); er.fs:SetPoint("TOPLEFT", er, "TOPLEFT", fx, -2); er.fs:SetWidth(CONTENT_W - fx)
        er.fs:SetText(ElementLine(el))
        er.check:SetChecked(el.checked and true or false)
        local eh = FSHeight(er.fs); if eh < 18 then eh = 18 end
        er:SetWidth(CONTENT_W); er:SetHeight(eh)
        er:ClearAllPoints(); er:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y)
        er:Show()
        y = y + eh + 3
      end
    end
    -- objective progress text lines (no checkbox)
    local ok, objl = pcall(ObjectiveLines, step)
    if ok and objl and table.getn(objl) > 0 then
      vis = vis + 1
      local er = GetElemRow(r, vis); er.element = nil; er.tip = nil
      er.check:Hide(); er.icon:Hide()
      er:SetScript("OnClick", nil)
      er.fs:ClearAllPoints(); er.fs:SetPoint("TOPLEFT", er, "TOPLEFT", 4, -2); er.fs:SetWidth(CONTENT_W - 4)
      er.fs:SetText(table.concat(objl, "\n"))
      local eh = FSHeight(er.fs); if eh < 12 then eh = 12 end
      er:SetWidth(CONTENT_W); er:SetHeight(eh)
      er:ClearAllPoints(); er:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y)
      er:Show()
      y = y + eh + 3
    end
    -- hide leftover element rows
    if r.elems then
      local k = vis + 1
      while r.elems[k] do r.elems[k]:Hide(); k = k + 1 end
    end
    -- progress bar
    local done, total = ObjectiveProgress(step)
    if total > 0 then
      r.bar:ClearAllPoints()
      r.bar:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y)
      r.bar:SetWidth(CONTENT_W)
      r.bar:SetValue(done / total)
      r.bar:Show()
      y = y + 9
    else
      r.bar:Hide()
    end
    -- auto-advance when every APPLICABLE element is ticked
    r.onToggle = function()
      local n = 0
      for k = 1, table.getn(step.elements or {}) do
        local el = step.elements[k]
        if CondOK(el.cond) then
          n = n + 1
          if not el.checked then return end
        end
      end
      if n > 0 then RXP12.Advance() end
    end
    h = y + 4
  else
    -- compact: hide expansion, single body with one leading type icon
    r.bar:Hide()
    if r.elems then local k = 1; while r.elems[k] do r.elems[k]:Hide(); k = k + 1 end end
    local ip
    for j = 1, table.getn(step.elements or {}) do
      local el = step.elements[j]
      if CondOK(el.cond) then local ic = KIND_ICON[el.kind]; if ic then ip = ic; break end end
    end
    local fx = CONTENT_X
    if ip then
      r.kindIcon:SetTexture(ip); r.kindIcon:SetAlpha(dim and 0.5 or 1); r.kindIcon:Show(); fx = CONTENT_X + 16
    else
      r.kindIcon:Hide()
    end
    local lines = {}
    for j = 1, table.getn(step.elements or {}) do
      if CondOK(step.elements[j].cond) then tinsert(lines, ElementLine(step.elements[j])) end
    end
    local body = table.concat(lines, "\n")
    if body == "" then body = "|cff777777(no description)|r" end
    r.fs:ClearAllPoints(); r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", fx, -4); r.fs:SetWidth(ROW_WIDTH - fx - 6)
    r.fs:SetText(body)
    r.fs:SetAlpha(dim and 0.5 or 1)
    r.fs:Show()
    h = FSHeight(r.fs) + 8
  end

  -- tooltip on the whole row = first goto coords / hint
  r.tip = (step.gotos and step.gotos[1]) and FormatGoto(step.gotos[1]) or "Right-click to jump here"
  if h < 20 then h = 20 end
  r:SetHeight(h); r:SetWidth(ROW_WIDTH)
  return h
end

function RXP12.ScrollToStep(cur)
  if not RXP12ScrollFrame then return end
  local maxScroll = RXP12ScrollChild:GetHeight() - RXP12ScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local target = (RXP12.rowY[cur] or 0) - 24
  if target < 0 then target = 0 end
  if target > maxScroll then target = maxScroll end
  RXP12ScrollFrame:SetVerticalScroll(target)
end

function RXP12.WheelScroll(dir)
  if not RXP12ScrollFrame then return end
  local maxScroll = RXP12ScrollChild:GetHeight() - RXP12ScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local v = RXP12ScrollFrame:GetVerticalScroll() - (dir or 0) * 36
  if v < 0 then v = 0 end
  if v > maxScroll then v = maxScroll end
  RXP12ScrollFrame:SetVerticalScroll(v)
end

function RXP12.UpdateUI()
  if not RXP12Frame then return end
  local g = RXP12.CurrentGuide()
  if not g or not RXP12.active then
    getglobal("RXP12FrameTitle"):SetText("RXP12 -- no guide")
    getglobal("RXP12FrameCounter"):SetText("")
    if RXP12FrameClassIcon then RXP12FrameClassIcon:Hide() end
    local r = GetRow(1); r.stepIndex = nil; r.bg:Hide(); r.accent:Hide(); r.num:Hide(); r.check:Hide(); r.bar:Hide(); r.kindIcon:Hide()
    if r.elems then local k=1; while r.elems[k] do r.elems[k]:Hide(); k=k+1 end end
    r.fs:ClearAllPoints(); r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", 8, -4); r.fs:SetWidth(ROW_WIDTH - 16)
    r.fs:Show(); r.fs:SetAlpha(1)
    r.fs:SetText("No guide loaded.\nType |cffffd200/rxp12 list|r, then |cffffd200/rxp12 load <name>|r")
    r:SetHeight(FSHeight(r.fs) + 8); r:SetWidth(ROW_WIDTH)
    r:ClearAllPoints(); r:SetPoint("TOPLEFT", RXP12ScrollChild, "TOPLEFT", 0, 0); r:Show()
    local idx = 2; while RXP12.rows[idx] do RXP12.rows[idx]:Hide(); idx = idx + 1 end
    RXP12ScrollChild:SetHeight(1)
    RXP12.SetWaypoint(nil)
    return
  end
  getglobal("RXP12FrameTitle"):SetText(g.name)
  local n = table.getn(RXP12.active)
  local cur = RXP12_Save.step or 1
  getglobal("RXP12FrameCounter"):SetText(cur.." / "..n)

  -- header class icon
  if RXP12FrameClassIcon then
    local tc = CLASS_TC[PLAYER_CLASS or ""]
    if tc then
      RXP12FrameClassIcon:SetTexCoord(tc[1], tc[2], tc[3], tc[4]); RXP12FrameClassIcon:Show()
    else RXP12FrameClassIcon:Hide() end
  end

  -- follow the (resizable) frame width so rows fill the scroll area
  if RXP12ScrollFrame then
    local w = RXP12ScrollFrame:GetWidth()
    if w and w > 80 then ROW_WIDTH = math.floor(w); CONTENT_W = ROW_WIDTH - CONTENT_X - 6 end
  end
  RXP12.rowY = {}
  local y = 0
  for i = 1, n do
    local r = GetRow(i)
    local h = RenderRow(r, RXP12.active[i], i, cur)
    r:ClearAllPoints()
    r:SetPoint("TOPLEFT", RXP12ScrollChild, "TOPLEFT", 0, -y)
    r:Show()
    RXP12.rowY[i] = y
    y = y + h
  end
  local idx = n + 1
  while RXP12.rows[idx] do RXP12.rows[idx]:Hide(); idx = idx + 1 end

  RXP12ScrollChild:SetWidth(ROW_WIDTH)
  RXP12ScrollChild:SetHeight(y > 0 and y or 1)
  RXP12.ScrollToStep(cur)
  RXP12.SetWaypoint(RXP12.active[cur])
end

-- ------------------------------------------------------ guide-select menu ----
-- RXP-style cog menu: a native UIDropDownMenu whose top level has Options +
-- Auto-detect, then one expandable submenu per guide #group (subcategory); the
-- submenu lists that group's guides (current one checked). Click a guide to load.
function RXP12.LoadGuideByName(name)
  if not RXP12.guides[name] then return end
  RXP12_Save.guide = name; RXP12_Save.step = 1
  RXP12.seen = {}; RXP12.activeStickies = {}
  RXP12.BuildActive(); RXP12.SkipForward(); RXP12.Show()
  Print("Loaded: |cffffd200"..name.."|r")
end

local function byLevel(a, b)
  local la = RXP12.guides[a].lo or 999
  local lb = RXP12.guides[b].lo or 999
  if la ~= lb then return la < lb end
  return a < b
end

-- resolve a guide's subcategory for THIS character: a plain #subgroup, else the
-- first conditional #subgroup whose "<<" condition matches (e.g. per-class sets).
function RXP12.GuideSubgroup(g)
  if g.subgroup then return g.subgroup end
  if g.subgroupCond then
    for i = 1, table.getn(g.subgroupCond) do
      if RXP12.EvalCondition(g.subgroupCond[i].cond) then return g.subgroupCond[i].name end
    end
  end
  return nil
end

-- a guide is visible if it has no faction or matches the player's
function RXP12.GuideVisible(g)
  return g and (not g.faction or g.faction == RXP12.me.faction)
end

function RXP12.MenuGroups()
  local seen, order = {}, {}
  for i = 1, table.getn(RXP12.guideOrder) do
    local g = RXP12.guides[RXP12.guideOrder[i]]
    if RXP12.GuideVisible(g) then
      local grp = g.group or "Other"
      if not seen[grp] then seen[grp] = true; tinsert(order, grp) end
    end
  end
  return order
end

-- unique subgroups (subcategories) within a group, in registration order
function RXP12.SubgroupsInGroup(grp)
  local seen, order = {}, {}
  for i = 1, table.getn(RXP12.guideOrder) do
    local g = RXP12.guides[RXP12.guideOrder[i]]
    local sub = RXP12.GuideVisible(g) and RXP12.GuideSubgroup(g)
    if ((g.group) or "Other") == grp and sub and not seen[sub] then
      seen[sub] = true; tinsert(order, sub)
    end
  end
  return order
end

-- guides in a group, sorted by start level. sub: nil = all; a string = that
-- subgroup only; false = only guides with no subgroup.
function RXP12.GuidesInGroup(grp, sub)
  local out = {}
  for i = 1, table.getn(RXP12.guideOrder) do
    local gname = RXP12.guideOrder[i]
    local g = RXP12.guides[gname]
    if RXP12.GuideVisible(g) and ((g.group) or "Other") == grp then
      local gsub = RXP12.GuideSubgroup(g)
      if sub == nil or (sub == false and not gsub) or (sub and gsub == sub) then
        tinsert(out, gname)
      end
    end
  end
  table.sort(out, byLevel)
  return out
end

function RXP12.MenuInit()
  local level = UIDROPDOWNMENU_MENU_LEVEL or 1
  local info
  if level == 1 then
    if RXP12.menuStep then
      local target = RXP12.menuStep
      info = {}; info.text = "Go to step "..target; info.notCheckable = 1
      info.func = function() RXP12.SetStep(target); CloseDropDownMenus() end
      UIDropDownMenu_AddButton(info, 1)
    end
    info = {}; info.text = "RXP12"; info.isTitle = 1; info.notCheckable = 1
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Options..."; info.notCheckable = 1
    info.func = function() RXP12.ToggleOptions(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Import guide..."; info.notCheckable = 1
    info.func = function() RXP12.ShowImport(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Dungeons..."; info.notCheckable = 1
    info.func = function() RXP12.ShowDungeons(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Auto-detect my guide"; info.notCheckable = 1
    info.func = function()
      local best = RXP12.AutoSelectGuide()
      if best then RXP12.LoadGuideByName(best) end
      CloseDropDownMenus()
    end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Guides"; info.isTitle = 1; info.notCheckable = 1
    UIDropDownMenu_AddButton(info, 1)

    local groups = RXP12.MenuGroups()
    for gi = 1, table.getn(groups) do
      info = {}; info.text = groups[gi]; info.notCheckable = 1
      info.hasArrow = 1; info.value = groups[gi]
      UIDropDownMenu_AddButton(info, 1)
    end
  elseif level == 2 then
    local grp = UIDROPDOWNMENU_MENU_VALUE
    local subs = RXP12.SubgroupsInGroup(grp)
    if table.getn(subs) > 0 then
      -- subcategory tier: one arrow per subgroup, then any guides with no subgroup
      for si = 1, table.getn(subs) do
        info = {}; info.text = subs[si]; info.notCheckable = 1
        info.hasArrow = 1; info.value = grp.."\1"..subs[si]
        UIDropDownMenu_AddButton(info, 2)
      end
      local loose = RXP12.GuidesInGroup(grp, false)
      for ni = 1, table.getn(loose) do
        local gname = loose[ni]
        info = {}; info.text = gname; info.checked = (RXP12_Save.guide == gname)
        info.func = function() RXP12.LoadGuideByName(gname); CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, 2)
      end
    else
      local names = RXP12.GuidesInGroup(grp)
      for ni = 1, table.getn(names) do
        local gname = names[ni]
        info = {}; info.text = gname; info.checked = (RXP12_Save.guide == gname)
        info.func = function() RXP12.LoadGuideByName(gname); CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, 2)
      end
    end
  elseif level == 3 then
    local _, _, grp, sub = string.find(UIDROPDOWNMENU_MENU_VALUE or "", "^(.-)\1(.*)$")
    local names = RXP12.GuidesInGroup(grp, sub)
    for ni = 1, table.getn(names) do
      local gname = names[ni]
      info = {}; info.text = gname; info.checked = (RXP12_Save.guide == gname)
      info.func = function() RXP12.LoadGuideByName(gname); CloseDropDownMenus() end
      UIDropDownMenu_AddButton(info, 3)
    end
  end
end

-- open the cog dropdown. A stepIndex (from a right-clicked row) adds a
-- "Go to step N" entry at the top, alongside the Options/Guides menu.
function RXP12.OpenMenu(stepIndex, anchor)
  if not RXP12Menu then return end
  RXP12.menuStep = stepIndex
  -- Always anchor to the cog (a stable left-side point), NOT the cursor: vanilla
  -- opens submenus to the RIGHT of the parent, and a cursor anchor near a screen
  -- edge flips them back over the parent (menus "clip into each other"). Close any
  -- stale menu first so re-opening never stacks frames.
  CloseDropDownMenus()
  ToggleDropDownMenu(1, nil, RXP12Menu, "RXP12FrameCog", 0, 0)
end

function RXP12.ToggleMenu()
  RXP12.OpenMenu(nil, "RXP12FrameCog")
end

local function CreateUI()
  if RXP12Frame then return end
  local f = CreateFrame("Frame", "RXP12Frame", UIParent)
  f:SetWidth(RXP12_Save.w or 340); f:SetHeight(RXP12_Save.h or 340)
  f:SetResizable(true)
  if f.SetMinResize then f:SetMinResize(260, 170) end
  if f.SetMaxResize then f:SetMaxResize(640, 900) end
  if RXP12_Save.pos then
    f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", RXP12_Save.pos.x, RXP12_Save.pos.y)
  else
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 80)
  end
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0.05, 0.05, 0.07, RXP12_Save.opacity or 0.92)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() if not RXP12_Save.locked then this:StartMoving() end end)
  f:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
    RXP12_Save.pos = { x = this:GetLeft(), y = this:GetTop() }
  end)
  f:SetScript("OnMouseUp", function() if arg1 == "RightButton" then RXP12.OpenMenu(nil, "cursor") end end)

  -- header: cog menu + class icon + guide name + counter, with a divider line
  local cog = CreateFrame("Button", "RXP12FrameCog", f)
  cog:SetWidth(18); cog:SetHeight(18)
  cog:SetPoint("TOPLEFT", f, "TOPLEFT", 8, -7)
  cog:SetNormalTexture("Interface\\Icons\\INV_Misc_Gear_01")
  cog:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
  cog:SetScript("OnClick", function() RXP12.ToggleMenu() end)
  cog:SetScript("OnEnter", function()
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT"); GameTooltip:SetText("Guides & Options", 1, 1, 1); GameTooltip:Show()
  end)
  cog:SetScript("OnLeave", function() GameTooltip:Hide() end)

  local cicon = f:CreateTexture("RXP12FrameClassIcon", "OVERLAY")
  cicon:SetWidth(18); cicon:SetHeight(18)
  cicon:SetPoint("LEFT", cog, "RIGHT", 5, 0)
  cicon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
  cicon:Hide()

  -- hidden dropdown that backs the cog menu
  local menu = CreateFrame("Frame", "RXP12Menu", UIParent, "UIDropDownMenuTemplate")
  UIDropDownMenu_Initialize(menu, RXP12.MenuInit, "MENU")

  local title = f:CreateFontString("RXP12FrameTitle", "OVERLAY", "GameFontNormal")
  title:SetPoint("LEFT", cicon, "RIGHT", 6, 0)
  title:SetText("RXP12")

  local counter = f:CreateFontString("RXP12FrameCounter", "OVERLAY", "GameFontHighlightSmall")
  counter:SetPoint("TOPRIGHT", f, "TOPRIGHT", -28, -12)

  local divider = f:CreateTexture(nil, "ARTWORK")
  divider:SetPoint("TOPLEFT", f, "TOPLEFT", 10, -30)
  divider:SetPoint("TOPRIGHT", f, "TOPRIGHT", -10, -30)
  divider:SetHeight(1); divider:SetTexture(1, 1, 1, 0.15)

  -- scrolling step list
  local sf = CreateFrame("ScrollFrame", "RXP12ScrollFrame", f)
  sf:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -34)
  sf:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -12, 10)
  local cchild = CreateFrame("Frame", "RXP12ScrollChild", sf)
  cchild:SetWidth(ROW_WIDTH); cchild:SetHeight(1)
  sf:SetScrollChild(cchild)
  sf:EnableMouseWheel(true)
  sf:SetScript("OnMouseWheel", function() RXP12.WheelScroll(arg1) end)

  local close = CreateFrame("Button", "RXP12FrameClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() RXP12.Hide() end)

  -- resize grip: drag the bottom-right corner (disabled while the window is locked)
  local grip = CreateFrame("Button", "RXP12FrameGrip", f)
  grip:SetWidth(16); grip:SetHeight(16)
  grip:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -4, 5)
  grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
  grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
  grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
  grip:SetScript("OnMouseDown", function() if not RXP12_Save.locked then f:StartSizing("BOTTOMRIGHT") end end)
  grip:SetScript("OnMouseUp", function()
    f:StopMovingOrSizing()
    RXP12_Save.w = f:GetWidth(); RXP12_Save.h = f:GetHeight()
    RXP12.UpdateUI()
  end)

  RXP12.UpdateUI()
end

-- ------------------------------------------------------------- options UI ----
local function MakeCheck(parent, name, label, y, getter, setter)
  local c = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
  c:SetWidth(26); c:SetHeight(26)
  c:SetPoint("TOPLEFT", parent, "TOPLEFT", 14, y)
  getglobal(name.."Text"):SetText(label)
  c:SetChecked(getter() and true or false)
  c:SetScript("OnClick", function() setter(this:GetChecked() and true or false) end)
  return c
end

local function CreateOptions()
  if RXP12OptionsFrame then return end
  local f = CreateFrame("Frame", "RXP12OptionsFrame", UIParent)
  f:SetWidth(290); f:SetHeight(300)
  f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0, 0, 0, 0.9)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() this:StartMoving() end)
  f:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
  f:SetFrameStrata("DIALOG")

  local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  title:SetPoint("TOP", f, "TOP", 0, -12)
  title:SetText("RXP12 Options")

  MakeCheck(f, "RXP12OptAuto", "Auto-accept & turn-in quests", -36,
    function() return RXP12_Save.auto end,
    function(v) RXP12_Save.auto = v
      Print("Auto quest pickup/turn-in "..(v and "|cff66cc66ON|r" or "|cffff5555OFF|r")) end)

  MakeCheck(f, "RXP12OptArrow", "Show direction arrow", -64,
    function() return RXP12_Save.arrow end,
    function(v) RXP12_Save.arrow = v end)

  MakeCheck(f, "RXP12OptLock", "Lock guide window", -92,
    function() return RXP12_Save.locked end,
    function(v) RXP12_Save.locked = v end)

  local s = CreateFrame("Slider", "RXP12OptScale", f, "OptionsSliderTemplate")
  s:SetWidth(220); s:SetHeight(16)
  s:SetPoint("TOP", f, "TOP", 0, -150)
  s:SetMinMaxValues(0.7, 1.5)
  s:SetValueStep(0.05)
  getglobal("RXP12OptScaleLow"):SetText("0.7")
  getglobal("RXP12OptScaleHigh"):SetText("1.5")
  getglobal("RXP12OptScaleText"):SetText("Guide window scale")
  s:SetValue(RXP12_Save.scale or 1)
  s:SetScript("OnValueChanged", function()
    local v = this:GetValue()
    RXP12_Save.scale = v
    if RXP12Frame then RXP12Frame:SetScale(v) end
  end)

  local op = CreateFrame("Slider", "RXP12OptOpacity", f, "OptionsSliderTemplate")
  op:SetWidth(220); op:SetHeight(16)
  op:SetPoint("TOP", f, "TOP", 0, -196)
  op:SetMinMaxValues(0, 1)
  op:SetValueStep(0.05)
  getglobal("RXP12OptOpacityLow"):SetText("0")
  getglobal("RXP12OptOpacityHigh"):SetText("1")
  getglobal("RXP12OptOpacityText"):SetText("Background opacity")
  op:SetValue(RXP12_Save.opacity or 0.92)
  op:SetScript("OnValueChanged", function()
    local v = this:GetValue()
    RXP12_Save.opacity = v
    if RXP12Frame then RXP12Frame:SetBackdropColor(0.05, 0.05, 0.07, v) end
  end)

  local rst = CreateFrame("Button", "RXP12OptReset", f, "UIPanelButtonTemplate")
  rst:SetWidth(130); rst:SetHeight(22)
  rst:SetPoint("BOTTOM", f, "BOTTOM", 0, 14)
  rst:SetText("Reset progress")
  rst:SetScript("OnClick", function()
    RXP12.seen = {}; RXP12.activeStickies = {}; RXP12.SetStep(1)
    Print("Reset to step 1.")
  end)

  local close = CreateFrame("Button", "RXP12OptionsClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() f:Hide() end)

  f:Hide()
end

function RXP12.ToggleOptions()
  CreateOptions()
  if RXP12OptionsFrame:IsVisible() then RXP12OptionsFrame:Hide()
  else
    -- sync widgets to current state before showing
    if RXP12OptAuto then RXP12OptAuto:SetChecked(RXP12_Save.auto and true or false) end
    if RXP12OptArrow then RXP12OptArrow:SetChecked(RXP12_Save.arrow and true or false) end
    if RXP12OptLock then RXP12OptLock:SetChecked(RXP12_Save.locked and true or false) end
    if RXP12OptScale then RXP12OptScale:SetValue(RXP12_Save.scale or 1) end
    if RXP12OptOpacity then RXP12OptOpacity:SetValue(RXP12_Save.opacity or 0.92) end
    RXP12OptionsFrame:Show()
  end
end

-- ----------------------------------------------------------- guide import ----
-- Register pasted guides at runtime (no client restart) via the same path guide
-- files use. Accepts either raw guide text or one/more RXPGuides.RegisterGuide([[
-- ... ]]) blocks. Persists the raw text per character so imports survive /reload.
-- ------------------------------------------------------------- dungeons UI ----
local DUNGEON_NAMES = {
  RFC="Ragefire Chasm", WC="Wailing Caverns", DM="The Deadmines", SFK="Shadowfang Keep",
  BFD="Blackfathom Deeps", STOCKADES="The Stockade", GNOMER="Gnomeregan", SM="Scarlet Monastery",
  RFK="Razorfen Kraul", RFD="Razorfen Downs", ZF="Zul'Farrak", MARA="Maraudon", ST="Sunken Temple",
  BRD="Blackrock Depths", ULDA="Uldaman",
}
local dungeonChecks = {}

local function CreateDungeons()
  if RXP12DungeonFrame then return end
  local f = CreateFrame("Frame", "RXP12DungeonFrame", UIParent)
  f:SetWidth(230); f:SetHeight(220)
  f:SetPoint("CENTER", UIParent, "CENTER", 140, 0)
  f:SetFrameStrata("DIALOG")
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0.05, 0.05, 0.07, 0.95)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() this:StartMoving() end)
  f:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
  local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  title:SetPoint("TOP", f, "TOP", 0, -10); title:SetText("Select Dungeons")
  f.empty = f:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
  f.empty:SetPoint("TOPLEFT", f, "TOPLEFT", 14, -34); f.empty:SetWidth(200); f.empty:SetJustifyH("LEFT")
  f.empty:SetText("No dungeons in this guide."); f.empty:Hide()
  local none = CreateFrame("Button", "RXP12DungeonNone", f, "UIPanelButtonTemplate")
  none:SetWidth(70); none:SetHeight(20); none:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 10, 8); none:SetText("None")
  none:SetScript("OnClick", function()
    RXP12_Save.dungeons = {}; RXP12.BuildActive(); RXP12.SkipForward(); RXP12.ShowDungeons()
  end)
  local all = CreateFrame("Button", "RXP12DungeonAll", f, "UIPanelButtonTemplate")
  all:SetWidth(70); all:SetHeight(20); all:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -10, 8); all:SetText("All")
  all:SetScript("OnClick", function()
    for i = 1, table.getn(RXP12.dungeonCodes or {}) do RXP12_Save.dungeons[RXP12.dungeonCodes[i]] = true end
    RXP12.BuildActive(); RXP12.SkipForward(); RXP12.ShowDungeons()
  end)
  local close = CreateFrame("Button", "RXP12DungeonClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2); close:SetScript("OnClick", function() f:Hide() end)
  f:Hide()
end

function RXP12.ShowDungeons()
  CreateDungeons()
  local f = RXP12DungeonFrame
  local codes = RXP12.dungeonCodes or {}
  local n = table.getn(codes)
  for i = 1, n do
    local c = dungeonChecks[i]
    if not c then
      c = CreateFrame("CheckButton", "RXP12DungeonChk"..i, f, "UICheckButtonTemplate")
      c:SetWidth(24); c:SetHeight(24)
      c.label = getglobal(c:GetName().."Text")
      c:SetScript("OnClick", function()
        if this.code then
          RXP12_Save.dungeons[this.code] = this:GetChecked() and true or nil
          RXP12.BuildActive(); RXP12.SkipForward()
        end
      end)
      dungeonChecks[i] = c
    end
    c.code = codes[i]
    c:ClearAllPoints(); c:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -32 - (i-1)*22)
    c.label:SetText(DUNGEON_NAMES[codes[i]] or codes[i])
    c:SetChecked(RXP12_Save.dungeons[codes[i]] and true or false)
    c:Show()
  end
  for i = n + 1, table.getn(dungeonChecks) do dungeonChecks[i]:Hide() end
  if n == 0 then f.empty:Show() else f.empty:Hide() end
  f:SetHeight(70 + (n > 0 and n or 1) * 22)
  f:Show()
end

function RXP12.ImportGuide(text)
  if not text or trim(text) == "" then return 0 end
  local blocks = {}
  for block in string.gfind(text, "%[%[(.-)%]%]") do tinsert(blocks, block) end
  if table.getn(blocks) == 0 then blocks = { text } end   -- raw guide body, no [[ ]]
  RXP12_Save.imports = RXP12_Save.imports or {}
  local n = 0
  for i = 1, table.getn(blocks) do
    local before = table.getn(RXP12.guideOrder)
    local ok = pcall(RXP12.RegisterGuide, blocks[i])
    if ok and table.getn(RXP12.guideOrder) >= before then
      tinsert(RXP12_Save.imports, blocks[i]); n = n + 1
    end
  end
  return n
end

local function CreateImport()
  if RXP12ImportFrame then return end
  local f = CreateFrame("Frame", "RXP12ImportFrame", UIParent)
  f:SetWidth(440); f:SetHeight(320)
  f:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
  f:SetFrameStrata("DIALOG")
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0.05, 0.05, 0.07, 0.95)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() this:StartMoving() end)
  f:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)

  local title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  title:SetPoint("TOP", f, "TOP", 0, -10); title:SetText("Import Guide")
  local hint = f:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
  hint:SetPoint("TOPLEFT", f, "TOPLEFT", 14, -28)
  hint:SetWidth(412); hint:SetJustifyH("LEFT")
  hint:SetText("Paste a guide (a RegisterGuide([[...]]) block or raw guide text), then Import. "
    .."Loads immediately -- no restart -- and is remembered for this character.")

  local eb = CreateFrame("EditBox", "RXP12ImportEdit", f)
  eb:SetMultiLine(true); eb:SetMaxLetters(0); eb:SetAutoFocus(false)
  eb:SetPoint("TOPLEFT", f, "TOPLEFT", 16, -54)
  eb:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -16, 42)
  eb:SetFontObject(ChatFontNormal)
  eb:SetJustifyH("LEFT"); eb:SetTextInsets(5, 5, 5, 5)
  eb:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 12,
    insets = { left = 3, right = 3, top = 3, bottom = 3 } })
  eb:SetBackdropColor(0, 0, 0, 0.7)
  eb:SetScript("OnEscapePressed", function() this:ClearFocus() end)

  local imp = CreateFrame("Button", "RXP12ImportDo", f, "UIPanelButtonTemplate")
  imp:SetWidth(100); imp:SetHeight(22)
  imp:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 14, 12); imp:SetText("Import")
  imp:SetScript("OnClick", function()
    local ok, n = pcall(RXP12.ImportGuide, eb:GetText())
    if ok and n and n > 0 then
      Print("Imported "..n.." guide(s). Open the cog menu to pick them.")
      eb:SetText(""); f:Hide(); RXP12.UpdateUI()
    else
      Print("|cffff5050Import failed|r -- paste a guide's text or a RegisterGuide([[...]]) block.")
    end
  end)

  local clr = CreateFrame("Button", "RXP12ImportClear", f, "UIPanelButtonTemplate")
  clr:SetWidth(80); clr:SetHeight(22)
  clr:SetPoint("LEFT", imp, "RIGHT", 8, 0); clr:SetText("Clear")
  clr:SetScript("OnClick", function() eb:SetText("") end)

  local close = CreateFrame("Button", "RXP12ImportClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() f:Hide() end)
  f:Hide()
end

function RXP12.ShowImport()
  CreateImport()
  RXP12ImportFrame:Show()
  if RXP12ImportEdit then RXP12ImportEdit:SetFocus() end
end

function RXP12.Show() if RXP12Frame then RXP12Frame:Show(); RXP12_Save.shown = true end end
function RXP12.Hide() if RXP12Frame then RXP12Frame:Hide(); RXP12_Save.shown = false end end
function RXP12.Toggle()
  if RXP12Frame and RXP12Frame:IsVisible() then RXP12.Hide() else RXP12.Show() end
end

-- --------------------------------------------------------------- defaults ----
local function Defaults()
  RXP12_Save = RXP12_Save or {}
  if RXP12_Save.step == nil then RXP12_Save.step = 1 end
  if RXP12_Save.shown == nil then RXP12_Save.shown = true end
  if RXP12_Save.auto == nil then RXP12_Save.auto = false end   -- auto quest pickup/turn-in (opt-in)
  if RXP12_Save.arrow == nil then RXP12_Save.arrow = true end
  if RXP12_Save.locked == nil then RXP12_Save.locked = false end
  if RXP12_Save.scale == nil then RXP12_Save.scale = 1 end
  if RXP12_Save.opacity == nil then RXP12_Save.opacity = 0.92 end
  if RXP12_Save.dungeons == nil then RXP12_Save.dungeons = {} end
  if RXP12_Save.done == nil then RXP12_Save.done = {} end   -- per-guide [gindex]=true (auto-completed)
end

-- score a guide for "is this the right one to start me on?" given the player level.
-- Higher = better. In-range beats already-passed beats starts-later.
local function GuideScore(g, lvl)
  if g.lo and g.hi and lvl >= g.lo and lvl <= g.hi then
    return 2000 - (g.hi - g.lo)        -- level is inside its range; tighter range wins
  elseif g.lo and g.lo <= lvl then
    return 1000 + g.lo                 -- already past its start; prefer the furthest along
  elseif g.lo then
    return 500 - g.lo                  -- starts above you; prefer the soonest
  end
  return 0
end

-- Auto-pick the starting guide from the player's race/class (via each guide's
-- #defaultfor condition) and level (via the #name "N-M" range). Skips if the
-- character already has a saved guide. Returns the chosen guide name (or nil).
function RXP12.AutoSelectGuide()
  local lvl = UnitLevel("player") or 1
  local best, bestScore
  for i = 1, table.getn(RXP12.guideOrder) do
    local gname = RXP12.guideOrder[i]
    local g = RXP12.guides[gname]
    -- eligible if it has no #defaultfor, or its #defaultfor matches this character
    if RXP12.GuideVisible(g) and (not g.defaultfor or RXP12.EvalCondition(g.defaultfor)) then
      local score = GuideScore(g, lvl)
      if not bestScore or score > bestScore then best = gname; bestScore = score end
    end
  end
  return best or RXP12.guideOrder[1]
end

local function SelectDefaultGuide()
  if RXP12_Save.guide and RXP12.guides[RXP12_Save.guide] then return end
  local best = RXP12.AutoSelectGuide()
  if best then
    RXP12_Save.guide = best
    RXP12_Save.step = 1
  end
end

-- ---------------------------------------------------------------- events ----
local ev = CreateFrame("Frame", "RXP12Events")
ev:RegisterEvent("VARIABLES_LOADED")
ev:RegisterEvent("PLAYER_LOGIN")
ev:RegisterEvent("QUEST_LOG_UPDATE")
ev:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
ev:RegisterEvent("PLAYER_LEVEL_UP")
ev:RegisterEvent("QUEST_DETAIL")      -- auto quest interaction (gated on RXP12_Save.auto)
ev:RegisterEvent("QUEST_PROGRESS")
ev:RegisterEvent("QUEST_COMPLETE")
ev:RegisterEvent("QUEST_GREETING")
ev:RegisterEvent("GOSSIP_SHOW")

local function OnEvent()
  if event == "VARIABLES_LOADED" then
    Defaults()
  elseif event == "PLAYER_LOGIN" then
    Defaults()
    local _, c = UnitClass("player"); PLAYER_CLASS = c
    RXP12.me.class = string.lower(c or "")
    RXP12.me.race = normalize(UnitRace("player"))
    RXP12.me.faction = string.lower(UnitFactionGroup("player") or "")
    if RXP12_Save.imports then   -- restore guides imported in earlier sessions
      for i = 1, table.getn(RXP12_Save.imports) do pcall(RXP12.RegisterGuide, RXP12_Save.imports[i]) end
    end
    SelectDefaultGuide()
    RXP12.BuildActive()
    CreateUI()
    CreateArrow()
    if RXP12_Save.scale and RXP12Frame then RXP12Frame:SetScale(RXP12_Save.scale) end
    if RXP12_Save.shown then RXP12.Show() else RXP12.Hide() end
    RXP12.SkipForward()   -- resume at the first not-yet-completed step
    Print("loaded. Guide: |cffffd200"..(RXP12_Save.guide or "none")
      .."|r  (/rxp12 list · /rxp12 detect · /rxp12 options)")
  elseif event == "QUEST_LOG_UPDATE" or event == "UNIT_QUEST_LOG_CHANGED"
      or event == "PLAYER_LEVEL_UP" then
    if event == "PLAYER_LEVEL_UP" then RXP12.BuildActive() end   -- re-filter maxlevel/level steps
    RXP12.CheckAuto()
    RXP12.UpdateUI()
  elseif event == "QUEST_DETAIL" or event == "QUEST_PROGRESS"
      or event == "QUEST_COMPLETE" or event == "QUEST_GREETING"
      or event == "GOSSIP_SHOW" then
    RXP12.HandleQuestEvent(event)
  end
end

ev:SetScript("OnEvent", function()
  local ok, err = pcall(OnEvent)
  if not ok then Print("|cffff4040error:|r "..tostring(err)) end
end)

-- ----------------------------------------------------------------- slash ----
SLASH_RXP121 = "/rxp12"
SLASH_RXP122 = "/rxp"
SlashCmdList["RXP12"] = function(msg)
  msg = trim(string.lower(msg or ""))
  local _, _, cmd, arg = string.find(msg, "^(%a*)%s*(.*)$")
  if cmd == "next" then RXP12.Advance()
  elseif cmd == "prev" or cmd == "back" then RXP12.Back()
  elseif cmd == "options" or cmd == "config" or cmd == "opt" then RXP12.ToggleOptions()
  elseif cmd == "dungeons" then RXP12.ShowDungeons()
  elseif cmd == "import" then
    if arg == "clear" then RXP12_Save.imports = {}; Print("Cleared imported guides -- /reload to apply.")
    else RXP12.ShowImport() end
  elseif cmd == "auto" then
    RXP12_Save.auto = not RXP12_Save.auto
    if RXP12OptAuto then RXP12OptAuto:SetChecked(RXP12_Save.auto and true or false) end
    Print("Auto quest pickup/turn-in "..(RXP12_Save.auto and "|cff66cc66ON|r" or "|cffff5555OFF|r"))
  elseif cmd == "debug" then
    RXP12.debug = not RXP12.debug
    Print("Debug "..(RXP12.debug and "|cff66cc66ON|r -- talk to a quest NPC and watch chat" or "|cffff5555OFF|r"))
  elseif cmd == "detect" then
    local best = RXP12.AutoSelectGuide()
    if best then
      RXP12_Save.guide = best; RXP12_Save.step = 1; RXP12.seen = {}; RXP12.activeStickies = {}
      RXP12.BuildActive(); RXP12.SkipForward(); RXP12.Show()
      Print("Auto-selected for "..(RXP12.me.race or "?").." "..(RXP12.me.class or "")..": |cffffd200"..best.."|r")
    else
      Print("No guide matched your class/race/level.")
    end
  elseif cmd == "reset" then RXP12.seen = {}; RXP12.activeStickies = {}; if RXP12_Save.done then RXP12_Save.done[RXP12_Save.guide] = nil end; RXP12.SetStep(1); Print("Reset to step 1.")
  elseif cmd == "list" then
    Print("Guides ("..table.getn(RXP12.guideOrder).."):")
    for i = 1, table.getn(RXP12.guideOrder) do
      DEFAULT_CHAT_FRAME:AddMessage("  "..i..". "..RXP12.guideOrder[i])
    end
  elseif cmd == "load" then
    local found
    for i = 1, table.getn(RXP12.guideOrder) do
      if string.find(string.lower(RXP12.guideOrder[i]), arg, 1, true) then found = RXP12.guideOrder[i]; break end
    end
    if found then
      RXP12_Save.guide = found; RXP12_Save.step = 1; RXP12.seen = {}
      RXP12.BuildActive()
      RXP12.SkipForward(); RXP12.Show(); Print("Loaded: "..found.." ("..table.getn(RXP12.active).." steps for you)")
    else
      Print("No guide matching '"..arg.."'. /rxp12 list")
    end
  else
    RXP12.Toggle()
  end
end
