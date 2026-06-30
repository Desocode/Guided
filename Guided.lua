--[[ Guided -- lean leveling-guide engine for the WoW 1.12 (vanilla) client.

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

Guided = {}
Guided.guides = {}        -- name -> parsed guide
Guided.guideOrder = {}    -- registration order
Guided.seen = {}          -- quest names ever seen in the log (for turn-in detection)

local PLAYER_CLASS       -- class token, e.g. "MAGE"

-- ---------------------------------------------------------------- helpers ----
local function trim(s)
  if not s then return "" end
  local _, _, c = string.find(s, "^%s*(.-)%s*$")
  return c or s
end

local function Print(msg)
  DEFAULT_CHAT_FRAME:AddMessage("|cff33ff99Guided|r: "..msg)
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
  -- Guided shows type icons via real Texture objects instead.
  s = string.gsub(s, "|T[^|]*|t", "")
  return s
end

-- player identity for "<<" class/race/faction step filtering (set at login)
Guided.me = { class = "", race = "", faction = "" }

local function normalize(s) return string.gsub(string.lower(s or ""), "%s", "") end
local function mymod(a, b) return a - math.floor(a / b) * b end
local function lc(s) return string.lower(trim(s or "")) end

-- format a ".goto" payload for display. The raw form "Zone,58.695,44.266,0,0"
-- (extra radius/flag numbers, 3 decimals) reads messy inline; show clean rounded
-- coords: "Go to Zone (58.7, 44.3)".
-- the goto's radius (the field after x,y) + whether an "optional" field follows.
-- RXP renders a "Go to" text line only for a positive, non-optional radius.
local function GotoRadius(raw)
  local f = {}
  for part in string.gfind(raw or "", "[^,]+") do tinsert(f, trim(part)) end
  local ri = f[3] and 4 or 3
  return tonumber(f[ri]), (f[ri + 1] ~= nil)
end

local function FormatGoto(raw)
  local f = {}
  for part in string.gfind(raw or "", "[^,]+") do tinsert(f, trim(part)) end
  local zone, x, y
  if f[1] and not tonumber(f[1]) then
    zone = f[1]; x = tonumber(f[2]); y = tonumber(f[3])
  elseif f[3] then
    zone = Guided_ZoneDB and Guided_ZoneDB[tonumber(f[1])]   -- numeric uiMapID -> zone name
    x = tonumber(f[2]); y = tonumber(f[3])
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
-- 1.12 vanilla client we ARE vanilla-era content; everything else is absent, so
-- "sod"/"som"/"tbc"/"wotlk"/"cata"/"mop"/"retail"/"df" tokens evaluate false.
local CLIENT_TRAITS = { classic = true, era = true, vanilla = true }
local function MatchToken(tok)
  local nx = normalize(tok)
  return nx == Guided.me.class or nx == Guided.me.race or nx == Guided.me.faction
      or CLIENT_TRAITS[nx] == true
end

-- evaluate an RXP "<<" condition. Grammar:
--   space-separated groups are AND'd; "/" inside a group is OR; "!" negates;
--   a trailing "-- comment" is ignored. e.g. "Human Paladin", "Warrior/Rogue", "!Warlock"
function Guided.EvalCondition(cond)
  if not cond or cond == "" then return true end
  local c = cond
  local s = string.find(c, "%-%-")              -- strip trailing comment
  if s then c = string.sub(c, 1, s - 1) end
  c = trim(c)
  if c == "" then return true end
  for group in string.gfind(c, "%S+") do
    -- a "/" group is an OR over its tokens; "!x" is satisfied when x does NOT match.
    -- (e.g. "!sod/Warrior" = (not sod) OR Warrior -> true on Era for everyone.)
    local groupTrue = false
    for tok in string.gfind(group, "[^/]+") do
      local ok
      if string.sub(tok, 1, 1) == "!" then ok = not MatchToken(string.sub(tok, 2))
      else ok = MatchToken(tok) end
      if ok then groupTrue = true; break end
    end
    if not groupTrue then return false end       -- groups are AND'd
  end
  return true
end

-- a per-line "<< cond" passes if absent, or its condition matches this character
local function CondOK(c) return (not c) or Guided.EvalCondition(c) end

-- build the list of steps that apply to this character (after << filtering)
-- weave dungeons: a step ".dungeon X" shows only if X is enabled; ".dungeon !X"
-- / ".dungeonskip X" (the solo-path alternative) is hidden when X is enabled.
function Guided.DungeonCheck(step)
  local en = Guided_Save.dungeons or {}
  if step.dungeonskip and en[step.dungeonskip] then return false end
  if step.dungeon and not en[step.dungeon] then return false end
  return true
end

-- map of the player's tradeskill ranks (normalized name -> rank) for .skill gates
function Guided.BuildSkillMap()
  local m = {}
  local n = (GetNumSkillLines and GetNumSkillLines()) or 0
  for i = 1, n do
    local name, isHeader, _, rank = GetSkillLineInfo(i)
    if name and not isHeader then m[normalize(name)] = rank or 0 end
  end
  return m
end

function Guided.SkillCheck(step)
  local sk = step.skill
  if not sk then return true end
  local rank = (Guided.skillMap and Guided.skillMap[sk.name]) or 0
  if sk.min then return rank >= sk.min end
  if sk.max then return rank < sk.max end
  return true
end

-- run-mode filters (settings-driven, like RXP): a step tagged with #season,
-- #xprate, or #hardcore/#softcore shows only when it matches the player's settings.
local function SeasonOK(step)
  if not step.season then return true end
  local sea = Guided_Save.season or 0
  for v in string.gfind(tostring(step.season), "%d+") do
    if tonumber(v) == sea then return true end
  end
  return false
end
local function XpRateOK(step)
  if not step.xprate then return true end
  local rate = Guided_Save.xprate or 1
  local _, _, op, num = string.find(tostring(step.xprate), "([<>]?)%s*([0-9.]+)")
  num = tonumber(num)
  if not num then return true end
  if op == "<" then return rate < num
  elseif op == ">" then return rate > num end
  return true
end
local function ModeOK(step)
  if step.hardcore and not Guided_Save.hardcore then return false end
  if step.softcore and Guided_Save.hardcore then return false end
  return true
end
-- group-quest filter (RXP stepLogic.GroupCheck): with group quests off, ".group"
-- steps are hidden and their ".solo" pairs shown; with it on, the reverse. The
-- per-line "<< class" cond decides who the directive applies to.
local function GroupCheck(step)
  if step.groupquest and Guided.EvalCondition(step.groupCond) then
    return Guided_Save.groupquests == true
  end
  if step.soloquest and Guided.EvalCondition(step.soloCond) then
    return Guided_Save.groupquests ~= true
  end
  return true
end
local function StepClientOK(step)
  if step.som or step.phase then return false end   -- SoM / SoD-phase content: hidden on vanilla Era
  return true
end

function Guided.BuildActive()
  Guided.active = {}
  Guided.labelIndex = {}      -- step #label -> index in active (for #completewith <label>)
  Guided.activeStickies = {}  -- index -> true: sticky steps pinned & not yet done
  Guided.dungeonCodes = {}    -- distinct dungeon codes present in this guide (for the picker)
  Guided.skillMap = Guided.BuildSkillMap()
  local g = Guided.CurrentGuide()
  if not g then return end
  Guided.EnsureParsed(g)
  local seenD = {}
  for i = 1, table.getn(g.steps) do
    local st = g.steps[i]
    if st.dungeon and not seenD[st.dungeon] then seenD[st.dungeon] = true; tinsert(Guided.dungeonCodes, st.dungeon) end
    if st.dungeonskip and not seenD[st.dungeonskip] then seenD[st.dungeonskip] = true; tinsert(Guided.dungeonCodes, st.dungeonskip) end
    if Guided.EvalCondition(st.cond) and Guided.DungeonCheck(st)
        and (not st.maxlevel or UnitLevel("player") <= st.maxlevel)
        and Guided.SkillCheck(st) and SeasonOK(st) and XpRateOK(st) and ModeOK(st) and GroupCheck(st) and StepClientOK(st) then
      tinsert(Guided.active, st)
      local s = Guided.active[table.getn(Guided.active)]
      if s.label and s.label ~= true then Guided.labelIndex[s.label] = table.getn(Guided.active) end
    end
  end
  table.sort(Guided.dungeonCodes)
  local n = table.getn(Guided.active)
  if (Guided_Save.step or 1) > n then Guided_Save.step = (n > 0 and n) or 1 end
  -- number every active step in sequence, sticky side-steps included (RXP does
  -- this -- the step after a sticky keeps the next number, so e.g. a kill side-step
  -- is 2 and the grind after it is 3, not 2).
  Guided.dispNum = {}
  for i = 1, n do Guided.dispNum[i] = i end
  Guided.numMain = n
end

-- resolve a quest id to its name via the bundled quest-name DB (Data\QuestNames.lua).
-- 1.12 has no quest ids in the API, so this table bridges guide ids <-> log titles.
-- Returns nil for ids not in the DB (e.g. server-custom quests) -> manual fallback.
local function QuestName(id)
  if not id then return nil end
  return Guided_QuestDB and Guided_QuestDB[id] or nil
end

-- ----------------------------------------------------------------- parser ----
-- parse one in-step line into the step table. Besides the engine-facing fields
-- (step.text / step.gotos / step.quests / step.level), each visible line becomes
-- an ordered "element" { kind, text, id, obj } so the UI can show a typed icon
-- per line (accept/turnin/goto/vendor/...) the way RXP does.
function Guided.ParseLine(step, t)
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

  local kind, etext, eid, eobj, eauto = nil, disp, nil, nil, nil

  if pre == "" then
    if disp then kind = "note" end                       -- a plain ">>text" note
  else
    local first = string.sub(pre, 1, 1)
    if first == "." then
      local _, _, cmd, rest = string.find(pre, "^%.(%S+)%s*(.*)")
      if cmd == "goto" then
        tinsert(step.gotos, rest)
        if disp then
          kind = "goto"; etext = disp                          -- author's destination text
        else
          local radius, optional = GotoRadius(rest)            -- RXP: a line only for a positive radius
          if radius and radius > 0 and not optional then
            kind = "goto"; etext = FormatGoto(rest)
          end                                                  -- else navigation-only (arrow uses step.gotos)
        end
      elseif cmd == "accept" or cmd == "complete" or cmd == "turnin" then
        -- RXP form: ".accept <id>", ".turnin <id>", ".complete <id>,<objective>"
        local _, _, id, obj = string.find(rest, "(%d+),?(%d*)")
        eid = tonumber(id); eobj = tonumber(obj)
        local _, _, tnum = string.find(rest, "%(x?(%d+)%)")    -- target count from "(x7)"
        local _, _, cmt = string.find(rest, "%-%-%s*(.+)")
        local label = cmt and trim(string.gsub(cmt, "%s*%b()%s*$", "")) or nil  -- comment minus "(x7)"
        tinsert(step.quests, { action = cmd, id = eid, obj = eobj, cond = lineCond,
          target = tonumber(tnum), label = label })
        kind = cmd
        if not etext then
          if cmt and trim(cmt) ~= "" then
            etext = trim(cmt)
            if cmd == "complete" then eauto = true end          -- has a label -> fold into the note
          else
            local nm = QuestName(eid)
            local verb = (cmd == "accept" and "Accept") or (cmd == "turnin" and "Turn in") or "Complete"
            etext = verb..(nm and (": "..nm) or (" quest "..(eid or "?")))
          end
        end
      elseif cmd == "fp" or cmd == "getfp" then kind = "fp"; etext = disp or "Get the flight point"
      elseif cmd == "fly" or cmd == "taxi" then
        kind = "fly"; etext = disp or ("Fly to "..rest)
        step.fly = step.fly or trim(rest)   -- destination name for auto-taxi
      elseif cmd == "vendor" or cmd == "buy" then kind = "vendor"; etext = disp or (rest ~= "" and rest) or "Vendor"
      elseif cmd == "train" or cmd == "trainer" then kind = "train"; etext = disp or "Train your spells"
      elseif cmd == "hearth" or cmd == "sethearth" or cmd == "home" or cmd == "hs" then kind = "hearth"; etext = disp or "Hearthstone"
      elseif cmd == "xp" then
        -- RXP ".xp [<]level[+/-xp][,skipstep]": a level/xp gate (see functions.xp).
        -- When satisfied the step is treated done and hidden (bypassed), like RXP.
        local part, skip = rest, nil
        local cc = string.find(rest, ",", 1, true)
        if cc then part = string.sub(rest, 1, cc - 1); skip = trim(string.sub(rest, cc + 1)) end
        part = string.gsub(trim(part), " ", "")
        local _, _, op, lvl, off = string.find(part, "(<?)(%d+)([%+%.%-]?%d*)")
        lvl = tonumber(lvl)
        if lvl then
          step.xpGate = { level = lvl, xp = tonumber(off) or 0, reverse = (op == "<"),
                          skip = (skip ~= nil and skip ~= "") }
          if not step.xpGate.skip then        -- skipstep gates are textOnly (no line)
            kind = "level"
            if not etext then
              local x = step.xpGate.xp
              if x < 0 then etext = string.format("Grind until you are %d xp away from level %d", -x, lvl)
              elseif x >= 1 then etext = string.format("Grind until you are %d xp into level %d", x, lvl)
              elseif x > 0 then etext = string.format("Grind until you are %d%% into level %d", math.floor(x*100), lvl)
              else etext = "Grind to level "..lvl end
            end
          end
        end
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
      elseif cmd == "skill" then
        local _, _, nm, lt, num = string.find(rest, "([%a%s]+),%s*(<?)(%d+)")
        if nm and num then
          step.skill = { name = normalize(nm),
            min = (lt == "<") and tonumber(num) or nil,    -- show if rank >= N
            max = (lt ~= "<") and tonumber(num) or nil }   -- show if rank <  N
        end
      elseif cmd == "use" then
        local _, _, id = string.find(rest, "(%d+)")
        id = tonumber(id)
        if id then
          step.useitems = step.useitems or {}
          local dup = false
          for k = 1, table.getn(step.useitems) do if step.useitems[k] == id then dup = true; break end end
          if not dup then tinsert(step.useitems, id) end
          step.useitem = step.useitem or id
        end
      elseif cmd == "target" or cmd == "mob" then
        local nm = rest
        nm = string.gsub(nm, '"', "")          -- RXP uses quotes for partial match
        nm = string.gsub(nm, "^%+", "")         -- and a leading + for "additional"
        nm = trim(nm)
        if nm ~= "" then
          step.targets = step.targets or {}
          local dup = false
          for k = 1, table.getn(step.targets) do if step.targets[k] == nm then dup = true; break end end
          if not dup then tinsert(step.targets, nm) end
          step.target = step.target or nm
        end
      elseif cmd == "isOnQuest" or cmd == "isNotOnQuest" or cmd == "isQuestComplete"
          or cmd == "isQuestTurnedIn" or cmd == "isQuestAvailable" then
        -- quest-state gates (RXP .isOnQuest/.isQuestTurnedIn/...): skip this step
        -- unless the condition holds. ids are OR'd; the Not/Available forms reverse it.
        local ids = {}
        for v in string.gfind(rest, "%d+") do tinsert(ids, tonumber(v)) end
        if table.getn(ids) > 0 then
          local t, rev = "onquest", false
          if cmd == "isNotOnQuest" then rev = true
          elseif cmd == "isQuestComplete" then t = "complete"
          elseif cmd == "isQuestTurnedIn" then t = "turnedin"
          elseif cmd == "isQuestAvailable" then t = "turnedin"; rev = true end
          step.gates = step.gates or {}
          tinsert(step.gates, { t = t, ids = ids, rev = rev })
        end
        if disp then kind = "note"; etext = disp end
      elseif cmd == "timer" then
        -- ".timer <minutes>,<label>": author countdown, shown while the step is active
        local _, _, mins, lbl = string.find(rest, "([0-9.]+)%s*,?%s*(.*)")
        mins = tonumber(mins)
        if mins then step.timer = { secs = mins * 60, label = (lbl and lbl ~= "" and lbl) or "Timer" } end
        if disp then kind = "note"; etext = disp end
      elseif cmd == "equip" then
        -- ".equip <slot>[,<itemId>]": route a known item id through the Use button so it
        -- can be equipped (UseContainerItem equips equippable items, like right-clicking).
        local _, _, eid = string.find(rest, "%d+%s*,%s*(%d+)")
        eid = tonumber(eid)
        if eid then
          step.useitems = step.useitems or {}
          local dup = false
          for k = 1, table.getn(step.useitems) do if step.useitems[k] == eid then dup = true; break end end
          if not dup then tinsert(step.useitems, eid) end
          step.useitem = step.useitem or eid
        end
        if disp then kind = "note"; etext = disp end
      elseif cmd == "group" then
        -- ".group [N] [<<cond]": this step is meant for a party. Gated by the
        -- "Enable group quests" setting; its paired ".solo" step shows when off.
        step.groupquest = true; step.groupCond = lineCond
        local _, _, gn = string.find(rest, "(%d+)")
        gn = tonumber(gn)
        kind = "note"
        if disp then etext = disp
        elseif gn and gn > 0 then etext = string.format("Group of %d+ recommended for this step", gn)
        else etext = "Group quest - best done with others" end
      elseif cmd == "solo" then
        step.soloquest = true; step.soloCond = lineCond
        if disp then kind = "note"; etext = disp end
      elseif disp then kind = "note"; etext = disp        -- any other command, show its text only
      end
    elseif first == "#" then
      local _, _, key, val = string.find(pre, "^#(%a+)%s*(.*)")
      if val then val = trim(string.gsub(val, "%s*%-%-.*$", "")) end
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
    tinsert(step.elements, { kind = kind, text = Sanitize(etext), id = eid, obj = eobj, cond = lineCond, auto = eauto })
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

function Guided.Parse(text, headerOnly)
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
        Guided.ParseLine(step, t)
      end
    end
  end
  guide.faction = GuideFaction(guide)
  return guide
end

-- lazily full-parse a guide's steps the first time it's selected, so we can
-- register hundreds of guides (Era.lua) cheaply at load with only their headers.
function Guided.EnsureParsed(g)
  if not g or g.parsed then return end
  g.parsed = true
  if not g.raw then g.steps = g.steps or {}; return end
  local ok, full = pcall(Guided.Parse, g.raw)
  g.steps = (ok and full and full.steps) or {}
end

function Guided.RegisterGuide(text)
  if type(text) ~= "string" then return end
  local ok, guide = pcall(Guided.Parse, text, true)   -- header only; steps parsed on demand
  if not ok or not guide then return end
  guide.raw = text
  if not Guided.guides[guide.name] then tinsert(Guided.guideOrder, guide.name) end
  Guided.guides[guide.name] = guide
end

-- accept RXP guide data files dropped in unchanged (they call this global),
-- as long as the real RXPGuides addon hasn't already claimed it
if type(RXPGuides) ~= "table" then RXPGuides = {} end
if type(RXPGuides.RegisterGuide) ~= "function" then
  RXPGuides.RegisterGuide = Guided.RegisterGuide
end

-- ----------------------------------------------------------------- engine ----
function Guided.CurrentGuide()
  return Guided_Save and Guided_Save.guide and Guided.guides[Guided_Save.guide] or nil
end

function Guided.CurrentStep()
  return Guided.active and Guided.active[Guided_Save.step or 1] or nil
end

function Guided.SetStep(i, dir)
  if not Guided.active then return end
  local n = table.getn(Guided.active)
  if n == 0 then return end
  if i < 1 then i = 1 end
  if i > n then i = n end
  -- the current step is never a sticky side-step nor an already-done step
  -- (satisfied .xp gate / observed-completed quest): step over those in the
  -- direction of travel. Sticky steps get pinned (shown as side steps) when
  -- moving forward. Manually-ticked steps aren't recorded, so they stay visitable.
  dir = dir or 1
  local log = Guided.BuildQuestLog and Guided.BuildQuestLog()
  local guard = 0
  while guard < 500 do
    local st = Guided.active[i]
    if st and st.sticky then
      if dir > 0 and not Guided.StepDoneByIndex(i, log) then
        Guided.activeStickies = Guided.activeStickies or {}
        Guided.activeStickies[i] = true
      end
      local ni = i + dir
      if ni < 1 or ni > n then break end
      i = ni; guard = guard + 1
    elseif Guided.StepDoneByIndex(i, log) then
      local ni = i + dir
      if ni < 1 or ni > n then break end
      i = ni; guard = guard + 1
    elseif st and not Guided.StepGateMet(st, log) then
      local ni = i + dir
      if ni < 1 or ni > n then break end
      i = ni; guard = guard + 1
    else break end
  end
  Guided_Save.step = i
  Guided.UpdateUI()
end

function Guided.Advance() Guided.SetStep((Guided_Save.step or 1) + 1, 1) end
function Guided.Back()    Guided.SetStep((Guided_Save.step or 1) - 1, -1) end

-- cycle-target the current step's mobs (one per call). Bind via a macro: /guided target
function Guided.TargetStep()
  local step = Guided.CurrentStep()
  local t = step and step.targets
  if not t or table.getn(t) == 0 then return end
  local i = (Guided.targetIdx or 0) + 1
  if i > table.getn(t) then i = 1 end
  Guided.targetIdx = i
  TargetByName(t[i])
end

-- parse a ".goto" payload -> zoneName(or nil), mapid(or nil), x, y
-- forms: "Zone Name,x,y[,r]" | "x,y" | "mapid,x,y[,r]"
local function ParseGoto(raw)
  local f = {}
  for part in string.gfind(raw, "[^,]+") do tinsert(f, trim(part)) end
  if table.getn(f) < 2 then return nil end
  if tonumber(f[1]) then
    if table.getn(f) >= 3 then
      local mid = tonumber(f[1])
      local zname = Guided_ZoneDB and Guided_ZoneDB[mid]
      if zname then return zname, nil, tonumber(f[2]), tonumber(f[3]) end  -- uiMapID -> zone name
      return nil, mid, tonumber(f[2]), tonumber(f[3])              -- unknown mapid,x,y
    end
    return nil, nil, tonumber(f[1]), tonumber(f[2])                -- x,y (current zone)
  end
  return f[1], nil, tonumber(f[2]), tonumber(f[3])                 -- zoneName,x,y
end

-- World-map pins (self-contained, no Astrolabe/Ace): a numbered marker for every
-- active step whose goto is in the zone the map is showing. On the zone's own map
-- the goto x,y (0-100) map straight onto WorldMapDetailFrame (the actual map image),
-- so no cross-map translation is needed. Pooled; current step highlighted green.
-- (Cross-continent placement would need Astrolabe's static zone tables; deferred.)
-- one-line summary of a step for the map tooltip (first element/note, colors stripped)
local function StepSummaryText(st)
  if not st then return "" end
  local t
  if st.elements then
    for k = 1, table.getn(st.elements) do
      if st.elements[k].text and st.elements[k].text ~= "" then t = st.elements[k].text; break end
    end
  end
  if not t and st.text then t = st.text[1] end
  if not t then return "" end
  t = string.gsub(t, "|c%x%x%x%x%x%x%x%x", "")
  t = string.gsub(t, "|r", "")
  return t
end

local mapPins = {}
local function GetMapPin(i)
  if mapPins[i] then return mapPins[i] end
  local parent = WorldMapDetailFrame or WorldMapButton
  local f = CreateFrame("Frame", "GuidedMapPin"..i, parent)
  f:SetFrameStrata("FULLSCREEN_DIALOG")   -- above WorldMapButton so hover (OnEnter) fires
  f:EnableMouse(true)
  f:SetWidth(18); f:SetHeight(18)
  local bg = f:CreateTexture(nil, "BACKGROUND")
  bg:SetAllPoints(f)
  bg:SetTexture("Interface\\CHARACTERFRAME\\TempPortraitAlphaMask")   -- filled circle
  bg:SetVertexColor(0, 0, 0); bg:SetAlpha(0.3)    -- faint circular backing, very low opacity
  f.bg = bg
  local num = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
  num:SetPoint("CENTER", f, "CENTER", 0, 0); num:SetTextColor(1, 1, 1)
  f.num = num
  f:SetScript("OnEnter", function()
    if not this.steps then return end
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
    local steps = this.steps
    local total = table.getn(steps)
    local cap = total > 10 and 10 or total
    for k = 1, cap do
      local p = steps[k]
      GameTooltip:AddLine(p.num and ("Step "..p.num) or "Side step", 1, 0.82, 0)
      local d = StepSummaryText(p.st)
      if d ~= "" then GameTooltip:AddLine("  "..d, 0.9, 0.9, 0.9) end
    end
    if total > cap then GameTooltip:AddLine("...and "..(total - cap).." more", 0.6, 0.6, 0.6) end
    GameTooltip:Show()
  end)
  f:SetScript("OnLeave", function() GameTooltip:Hide() end)
  mapPins[i] = f
  return f
end

-- localized name of the zone the world map is currently DISPLAYING (nil for the
-- continent/world view). Matches the names guides use in ".goto Zone,x,y".
local function DisplayedZoneName()
  local c, z = GetCurrentMapContinent(), GetCurrentMapZone()
  if not c or c <= 0 or not z or z <= 0 then return nil end
  local zones = { GetMapZones(c) }
  return zones[z]
end

-- map-pin tuning. PIN_CLUSTER_PX: merge radius for grouping nearby waypoints.
-- PIN_LOOKAHEAD: how many steps ahead of the current one to scan (RXP caps map pins
-- the same way via numMapPins, default 7). PIN_MAX: most grouped markers drawn.
local PIN_CLUSTER_PX = 18
local PIN_LOOKAHEAD  = 7    -- max waypoints shown ahead of the current step (RXP numMapPins ~ 7)
local PIN_SCAN       = 80   -- how many steps ahead to scan to find those waypoints
local PIN_MAX        = 8    -- hard safety cap on grouped markers

function Guided.UpdateWorldMapPins()
  for i = 1, table.getn(mapPins) do mapPins[i]:Hide() end
  if not WorldMapFrame or not WorldMapFrame:IsVisible() then return end
  local shown = DisplayedZoneName()
  if not shown then return end                              -- continent/world view: no pins
  local snorm = normalize(shown)
  local parent = WorldMapDetailFrame or WorldMapButton
  if not parent then return end
  local w, h = parent:GetWidth(), parent:GetHeight()
  if not w or w == 0 then return end
  local cur = Guided_Save.step
  local active = Guided.active or {}
  local last = table.getn(active)

  -- 1) candidate gotos in the shown zone: current step + a look-ahead window, plus
  --    any active stickies (which can sit behind the current step). NOT past steps.
  local pts = {}
  local function consider(ai)
    local st = active[ai]; if not st then return end
    local gs = st.gotos and st.gotos[1]; if not gs then return end
    local zone, _, tx, ty = ParseGoto(gs)
    if zone and tx and ty and normalize(zone) == snorm then
      tinsert(pts, { ai = ai, num = Guided.dispNum and Guided.dispNum[ai], st = st,
                     px = (tx / 100) * w, py = (ty / 100) * h })
    end
  end
  if Guided.activeStickies then
    for ai in pairs(Guided.activeStickies) do
      if ai < cur and table.getn(pts) < PIN_LOOKAHEAD then consider(ai) end
    end
  end
  local stop = cur + PIN_SCAN; if stop > last then stop = last end
  for ai = cur, stop do
    if table.getn(pts) >= PIN_LOOKAHEAD then break end   -- only the next few waypoints
    consider(ai)
  end

  -- 2) greedy proximity grouping (RXP-style); draw at most PIN_MAX grouped markers.
  local npts = table.getn(pts)
  local used = {}
  local r2 = PIN_CLUSTER_PX * PIN_CLUSTER_PX
  local ci = 0
  for i = 1, npts do
    if not used[i] then
      used[i] = true
      local cl = { pts[i] }
      local sx, sy = pts[i].px, pts[i].py
      for j = i + 1, npts do
        if not used[j] then
          local dx, dy = pts[i].px - pts[j].px, pts[i].py - pts[j].py
          if (dx * dx + dy * dy) <= r2 then
            used[j] = true; tinsert(cl, pts[j]); sx = sx + pts[j].px; sy = sy + pts[j].py
          end
        end
      end
      ci = ci + 1
      if ci > PIN_MAX then break end
      local count = table.getn(cl)
      local pin = GetMapPin(ci)
      pin.steps = cl                                        -- for the hover tooltip
      local hasCur, minNum = false, nil
      for k = 1, count do
        if cl[k].ai == cur then hasCur = true end
        local nm = cl[k].num
        if nm and (not minNum or nm < minNum) then minNum = nm end   -- lowest step number in the group
      end
      local label
      if minNum then label = tostring(minNum); if count > 1 then label = label.."+" end
      else label = (count > 1 and "+") or "*" end           -- group of unnumbered side steps
      pin.num:SetText(label)
      if hasCur then pin.num:SetTextColor(0.3, 1, 0.3) else pin.num:SetTextColor(1, 1, 1) end  -- current = green
      pin:ClearAllPoints()
      pin:SetPoint("CENTER", parent, "TOPLEFT", sx / count, -(sy / count))   -- average position
      pin:Show()
    end
  end
end

-- called from UpdateUI on every step change; also driven by WORLD_MAP_UPDATE
function Guided.SetWaypoint(step)
  if Guided.UpdateWorldMapPins then Guided.UpdateWorldMapPins() end
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
  -- some 1.12 clients lack the "rotateMinimap" cvar and GetCVar ERRORS
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
-- Uses Guided's own bundled arrow sprite-sheet + the native GetPlayerFacing above;
-- the angle->cell math is copied verbatim from pfQuest/TomTomVanilla (proven).
local SHEET = "Interface\\AddOns\\Guided\\img\\arrow"
local arrowThrottle = 0

-- where the arrow points: the current step's goto; if it has none (e.g. a "grind"
-- step), fall back to an active sticky's goto so it still points at the kill area.
-- flight destinations wanted by the current step, a few ahead, and active stickies
function Guided.WantedFlights()
  local want = {}
  if not Guided.active then return want end
  local cur = Guided_Save.step or 1
  for d = 0, 3 do
    local st = Guided.active[cur + d]
    if st and st.fly then tinsert(want, string.upper(st.fly)) end
  end
  if Guided.activeStickies then
    for idx in pairs(Guided.activeStickies) do
      local st = Guided.active[idx]
      if st and st.fly then tinsert(want, string.upper(st.fly)) end
    end
  end
  return want
end

-- on TAXIMAP_OPENED: fly to the wanted destination (match the node name)
function Guided.HandleTaxi()
  if not Guided_Save.autofly then return end
  local want = Guided.WantedFlights()
  if table.getn(want) == 0 then return end
  local n = (NumTaxiNodes and NumTaxiNodes()) or 0
  for i = 1, n do
    local name = TaxiNodeName and TaxiNodeName(i)
    if name and (not TaxiNodeGetType or TaxiNodeGetType(i) ~= "CURRENT") then
      local up = string.upper(name)
      for w = 1, table.getn(want) do
        if string.find(up, want[w], 1, true) then TakeTaxiNode(i); return end
      end
    end
  end
end

-- on GOSSIP_SHOW at a flight master that uses a gossip menu: pick the taxi option
function Guided.HandleTaxiGossip()
  if not Guided_Save.autofly or not GetGossipOptions then return end
  if table.getn(Guided.WantedFlights()) == 0 then return end
  local opts = { GetGossipOptions() }   -- text1, type1, text2, type2, ...
  for i = 1, table.getn(opts), 2 do
    if opts[i + 1] == "taxi" then SelectGossipOption((i + 1) / 2); return end
  end
end

function Guided.ArrowGoto()
  local step = Guided.CurrentStep()
  if step and step.gotos and step.gotos[1] then return step.gotos[1] end
  if Guided.activeStickies and Guided.active then
    local order = {}
    for idx in pairs(Guided.activeStickies) do tinsert(order, idx) end
    table.sort(order)
    for o = 1, table.getn(order) do
      local sk = Guided.active[order[o]]
      if sk and sk.gotos and sk.gotos[1] then return sk.gotos[1] end
    end
  end
  return nil
end

-- vanilla zone widths in yards (maps are a fixed 1.5:1 aspect, so height = w/1.5).
-- Used to turn the map-percent delta into a real yard distance for the waypoint.
local ZONE_YARDS = {
  ["Elwynn Forest"]=3471,["Westfall"]=3500,["Redridge Mountains"]=2722,["Duskwood"]=2700,
  ["Stranglethorn Vale"]=6381,["Dun Morogh"]=4925,["Loch Modan"]=2738,["Wetlands"]=4135,
  ["Tirisfal Glades"]=4519,["Silverpine Forest"]=4200,["Hillsbrad Foothills"]=3203,
  ["Arathi Highlands"]=3601,["Western Plaguelands"]=4031,["Eastern Plaguelands"]=4380,
  ["The Hinterlands"]=3850,["Searing Gorge"]=2231,["Burning Steppes"]=2920,["Badlands"]=2349,
  ["Swamp of Sorrows"]=2293,["Blasted Lands"]=3346,["Deadwind Pass"]=2266,["Alterac Mountains"]=2723,
  ["Durotar"]=5037,["Mulgore"]=4662,["The Barrens"]=10135,["Teldrassil"]=3912,["Darkshore"]=6550,
  ["Ashenvale"]=5766,["Stonetalon Mountains"]=4581,["Desolace"]=4496,["Dustwallow Marsh"]=5250,
  ["Feralas"]=6949,["Thousand Needles"]=4399,["Tanaris"]=6899,["Un'Goro Crater"]=3681,
  ["Silithus"]=3483,["Felwood"]=5750,["Winterspring"]=7099,["Azshara"]=6357,["Moonglade"]=2308,
}

function Guided.ArrowUpdate(elapsed)
  if not GuidedArrow then return end
  arrowThrottle = arrowThrottle - (elapsed or 0)
  if arrowThrottle > 0 then return end
  arrowThrottle = 0.05
  local model = getglobal("GuidedArrowModel")
  local txt = getglobal("GuidedArrowText")

  if Guided_Save and Guided_Save.arrow == false then model:Hide(); txt:SetText(""); return end

  local step = Guided.CurrentStep()
  local gs = Guided.ArrowGoto()
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
  local w = ZONE_YARDS[GetRealZoneText() or ""] or 3500   -- zone width in yards (default mid-size)
  local yx, yy = ddx / 100 * w, ddy / 100 * (w / 1.5)     -- maps are 1.5:1
  local dist = math.sqrt(yx*yx + yy*yy)
  local dir = atan2(ddx*1.5, -(ddy))
  dir = dir > 0 and (math.pi*2) - dir or -dir
  if dir < 0 then dir = dir + 360 end
  local angle = math.rad(dir) - GetPlayerFacing()
  local cell = mymod(math.floor(angle / (math.pi*2) * 108 + 0.5), 108)
  local column, row = mymod(cell, 9), math.floor(cell / 9)
  model:SetTexCoord((column*56)/512, ((column+1)*56)/512, (row*42)/512, ((row+1)*42)/512)
  model:Show()
  if dist < 12 then txt:SetText("|cff66cc66Arrived|r")
  else txt:SetText(string.format("%d yds", dist)) end
end

-- ---- minimap step pins (player-relative, recomputed each tick) ----
-- Astrolabe's hardcoded minimap view diameters (yards) per zoom. Assume a north-up
-- minimap (1.12 default); if it rotates, counter-rotate the offsets by player facing.
local MM_OUTDOOR = { [0] = 466.7, [1] = 400, [2] = 333.3, [3] = 266.7, [4] = 200, [5] = 133.3 }
local function MinimapDiameter()
  local z = (Minimap and Minimap.GetZoom and Minimap:GetZoom()) or 3
  return MM_OUTDOOR[z] or MM_OUTDOOR[3]
end

local mmPins = {}
local function GetMMPin(i)
  if mmPins[i] then return mmPins[i] end
  local f = CreateFrame("Frame", "GuidedMMPin"..i, Minimap)
  f:SetWidth(14); f:SetHeight(14); f:SetFrameStrata("HIGH")
  local bg = f:CreateTexture(nil, "BACKGROUND")
  bg:SetAllPoints(f)
  bg:SetTexture("Interface\\CHARACTERFRAME\\TempPortraitAlphaMask")   -- faint circle
  bg:SetVertexColor(0, 0, 0); bg:SetAlpha(0.35)
  local num = f:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
  num:SetPoint("CENTER", f, "CENTER", 0, 0); f.num = num
  mmPins[i] = f
  return f
end

function Guided.UpdateMinimapPins()
  for i = 1, table.getn(mmPins) do mmPins[i]:Hide() end
  if Guided_Save.minimappins == false or not Guided.active or not Minimap then return end
  local px, py = GetPlayerMapPosition("player")
  if (not px) or (px == 0 and py == 0) then return end          -- no usable position (instance, etc.)
  local znorm = normalize(GetRealZoneText() or "")
  local zoneW = ZONE_YARDS[GetRealZoneText() or ""] or 3500
  local zoneH = zoneW / 1.5
  local mmW = Minimap:GetWidth()
  local diameter = MinimapDiameter()
  if not mmW or mmW == 0 or not diameter or diameter == 0 then return end
  local pixPerYard = mmW / diameter
  local edge = mmW / 2 - 7
  local facing = 0                                              -- north-up unless the minimap rotates
  local okc, cv = pcall(GetCVar, "rotateMinimap")
  if okc and cv == "1" then facing = GetPlayerFacing() or 0 end
  local cosf, sinf = math.cos(facing), math.sin(facing)

  local cur = Guided_Save.step or 1
  local active = Guided.active
  local shown = 0
  local function place(ai)
    if shown >= 7 then return end
    local st = active[ai]; if not st then return end
    local gs = st.gotos and st.gotos[1]; if not gs then return end
    local zone, _, tx, ty = ParseGoto(gs)
    if not (zone and tx and ty) or normalize(zone) ~= znorm then return end
    local sx = (tx / 100 - px) * zoneW                          -- east+
    local sy = -((ty / 100 - py) * zoneH)                       -- north+ (map y is south+)
    if facing ~= 0 then
      local rx = sx * cosf + sy * sinf
      local ry = -sx * sinf + sy * cosf
      sx, sy = rx, ry
    end
    local ox, oy = sx * pixPerYard, sy * pixPerYard
    if math.sqrt(ox * ox + oy * oy) > edge then return end       -- off the minimap (arrow covers far)
    shown = shown + 1
    local pin = GetMMPin(shown)
    local n = Guided.dispNum and Guided.dispNum[ai]
    pin.num:SetText(n and tostring(n) or "")
    if ai == cur then pin.num:SetTextColor(0.3, 1, 0.3) else pin.num:SetTextColor(1, 1, 1) end
    pin:ClearAllPoints(); pin:SetPoint("CENTER", Minimap, "CENTER", ox, oy); pin:Show()
  end
  if Guided.activeStickies then
    for ai in pairs(Guided.activeStickies) do if ai < cur then place(ai) end end
  end
  local last = table.getn(active)
  local stop = cur + 60; if stop > last then stop = last end
  for ai = cur, stop do if shown >= 7 then break end place(ai) end
end

function Guided.StartMinimapPins()
  if Guided.mmUpdater then return end
  local u = CreateFrame("Frame", "GuidedMMUpdater", UIParent)
  u.t = 0
  u:SetScript("OnUpdate", function()
    this.t = this.t + (arg1 or 0)
    if this.t < 0.1 then return end
    this.t = 0
    if Guided.UpdateMinimapPins then Guided.UpdateMinimapPins() end
  end)
  Guided.mmUpdater = u
end

local function CreateArrow()
  if GuidedArrow then return end
  local a = CreateFrame("Frame", "GuidedArrow", UIParent)
  a:SetWidth(48); a:SetHeight(36)
  if Guided_Save.arrowpos then
    a:SetPoint("CENTER", UIParent, "BOTTOMLEFT", Guided_Save.arrowpos.x, Guided_Save.arrowpos.y)
  else
    a:SetPoint("CENTER", UIParent, "CENTER", 0, -140)
  end
  a:SetMovable(true); a:EnableMouse(true); a:RegisterForDrag("LeftButton")
  a:SetScript("OnDragStart", function() this:StartMoving() end)
  a:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
    Guided_Save.arrowpos = { x = this:GetLeft() + this:GetWidth()/2, y = this:GetBottom() + this:GetHeight()/2 }
  end)
  local model = a:CreateTexture("GuidedArrowModel", "ARTWORK")
  model:SetTexture(SHEET)
  model:SetTexCoord(0, 0.109375, 0, 0.08203125)
  model:SetAllPoints()
  local txt = a:CreateFontString("GuidedArrowText", "OVERLAY", "GameFontNormalSmall")
  txt:SetPoint("TOP", a, "BOTTOM", 0, -2)
  -- frame stays shown so OnUpdate keeps firing (hidden frames don't update);
  -- the model/text hide themselves when there's nothing to point at.
  a:SetScript("OnUpdate", function() Guided.ArrowUpdate(arg1) end)
end

-- snapshot the live quest log keyed by lowercased title:
--   log[name] = { idx = logIndex, complete = bool }
-- also records every seen title (for turn-in = seen-then-gone detection).
-- Guide quest ids are matched to this by resolving id -> name via the bundled DB.
local BuildQuestLog
BuildQuestLog = function()
  local log = {}
  local n = GetNumQuestLogEntries()
  for i = 1, n do
    local title, _, _, isHeader, _, isComplete = GetQuestLogTitle(i)
    if title and not isHeader then
      local key = lc(title)
      log[key] = { idx = i, complete = (isComplete == 1) }
      Guided.seen[key] = true
    end
  end
  return log
end
Guided.BuildQuestLog = BuildQuestLog   -- exposed so SetStep (defined earlier) can use it

-- is objective `obj` of the quest at log index `li` finished?
-- uses SelectQuestLogEntry + restore (portable: works across 1.12 servers)
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
-- RXP's .xp gate test (matches functions.xp completion logic)
function Guided.XpGateMet(g)
  if not g then return false end
  local lvl = UnitLevel("player") or 1
  local cur = UnitXP("player") or 0
  local mx = UnitXPMax("player") or 1
  local L, X = g.level, g.xp or 0
  local raw
  if X < 0 then raw = (lvl >= L) or (lvl == L - 1 and cur >= mx + X)
  elseif X >= 1 then raw = (lvl > L) or (lvl == L and cur >= X)
  else raw = (lvl > L) or (lvl == L and cur >= mx * X) end
  if g.reverse then return not raw end
  return raw
end

function Guided.IsStepDone(step, log)
  if not step then return false end
  if step.level and UnitLevel("player") >= step.level then return true end
  if step.xpGate and (step.xpGate.skip or Guided_Save.skipoverlevel ~= false) and Guided.XpGateMet(step.xpGate) then return true end
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
        if q.id and q.id == Guided.justAbandonedId then
          if entry then return false                         -- just abandoned but still transiently in log: not "done"
          else Guided.justAbandonedId = nil end              -- abandon confirmed (quest gone): clear the guard
        end
        if not entry then return false end                   -- quest not in log yet
      elseif q.action == "complete" then
        if not entry then return false                       -- not even accepted
        elseif q.obj then
          if not ObjectiveDone(entry.idx, q.obj) then return false end -- objective not done
        elseif not entry.complete then return false end       -- whole quest not complete
      elseif q.action == "turnin" then
        if Guided.seen[key] and not entry then                       -- seen, now gone = turned in
          Guided_Save.doneQuests = Guided_Save.doneQuests or {}
          if q.id then Guided_Save.doneQuests[q.id] = true end       -- remember the hand-in (persisted)
        else
          return false
        end
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
function Guided.IsDoneStored(s)
  -- "done" persists only for quests we've OBSERVED handed in -- never for steps
  -- merely advanced past (accept/kill/gate). A step counts done once every quest
  -- it references has been turned in.
  if not s or not s.quests or table.getn(s.quests) == 0 then return false end
  local dq = Guided_Save.doneQuests
  if not dq then return false end
  local any = false
  for k = 1, table.getn(s.quests) do
    local q = s.quests[k]
    if CondOK(q.cond) and q.id then
      any = true
      if not dq[q.id] then return false end
    end
  end
  return any
end
function Guided.RecordDone(s)
  if not s or not s.gindex or not Guided_Save.guide then return end
  Guided_Save.done[Guided_Save.guide] = Guided_Save.done[Guided_Save.guide] or {}
  Guided_Save.done[Guided_Save.guide][s.gindex] = true
end

function Guided.StepDoneByIndex(i, log, depth)
  depth = (depth or 0) + 1
  if depth > 30 then return false end
  local s = Guided.active and Guided.active[i]
  if not s then return false end
  if Guided.IsDoneStored(s) then return true end
  if s.completewith and s.completewith ~= true then
    local target
    if s.completewith == "next" then target = i + 1
    else target = Guided.labelIndex and Guided.labelIndex[s.completewith] end
    if target and target ~= i then
      return Guided.StepDoneByIndex(target, log, depth)
    end
  end
  return Guided.IsStepDone(s, log)
end

-- advance past every consecutive already-completed step (handles auto-advance,
-- resuming a guide, and doing quests out of order). Sticky steps are not dwelt
-- on: when reached they're pinned (shown alongside the current step) until their
-- own condition is met, and we move on to the next non-sticky step. Stops at the
-- first step that isn't done/sticky, or the last step.
-- evaluate a step's .isQuest* gates against live quest state. Unmet -> the step is
-- skipped (RXP marks step.completed). Unknown quest id (not in our DB) -> treated as
-- met, so we never hide a step we can't judge.
function Guided.StepGateMet(step, log)
  if not step.gates then return true end
  for g = 1, table.getn(step.gates) do
    local gate = step.gates[g]
    local met, resolvable = false, false
    for k = 1, table.getn(gate.ids) do
      local id = gate.ids[k]
      local nm = QuestName(id)
      if nm then
        resolvable = true
        local key = lc(nm)
        if gate.t == "onquest" then
          if log and log[key] then met = true end
        elseif gate.t == "complete" then
          if log and log[key] and log[key].complete then met = true end
        elseif gate.t == "turnedin" then
          if Guided_Save.doneQuests and Guided_Save.doneQuests[id] then met = true end
        end
      end
    end
    if resolvable then
      if gate.rev then met = not met end
      if not met then return false end
    end
  end
  return true
end

-- a pinned sticky should drop once it's done OR the current step has advanced past
-- the step it completes with (its window closed). Without this an orphaned side-step
-- lingers while you're already several steps ahead (e.g. after abandoning a quest).
local function StickyShouldPin(idx, log)
  if Guided.StepDoneByIndex(idx, log) then return false end
  local s = Guided.active and Guided.active[idx]
  if not s then return false end
  if s.completewith and s.completewith ~= true then
    local t = (s.completewith == "next") and (idx + 1)
              or (Guided.labelIndex and Guided.labelIndex[s.completewith])
    if t and (Guided_Save.step or 1) > t then return false end   -- past its completion window
  end
  -- a kill/collect sticky for a quest you're no longer on (abandoned) can't progress,
  -- so don't keep it pinned. (Unknown quest id -> fail open and keep it.)
  if log and s.quests then
    local hasComplete, onAny = false, false
    for k = 1, table.getn(s.quests) do
      local q = s.quests[k]
      if q.action == "complete" then
        hasComplete = true
        local nm = QuestName(q.id)
        if (not nm) or log[lc(nm)] then onAny = true end
      end
    end
    if hasComplete and not onAny then return false end
  end
  return true
end

function Guided.SkipForward()
  if not Guided.active then return end
  Guided.activeStickies = Guided.activeStickies or {}
  local log = BuildQuestLog()   -- also records "seen" titles
  local n = table.getn(Guided.active)

  -- unpin any sticky that's done or whose completion window has passed
  for idx in pairs(Guided.activeStickies) do
    if not StickyShouldPin(idx, log) then Guided.activeStickies[idx] = nil end
  end

  -- (re)pin sticky side-steps behind the current step that are still relevant.
  -- activeStickies isn't persisted, so after a /reload (current step restored
  -- past a sticky) this rebuilds the pins instead of leaving them greyed.
  local cur0 = Guided_Save.step or 1
  for i = 1, cur0 - 1 do
    local sp = Guided.active[i]
    if sp and sp.sticky and StickyShouldPin(i, log) then
      Guided.activeStickies[i] = true
    end
  end

  local guard = 0
  while (Guided_Save.step or 1) < n and guard < 2000 do
    guard = guard + 1
    local i = Guided_Save.step or 1
    local s = Guided.active[i]
    if s and s.sticky then
      -- pin it (unless already satisfied) and step over it
      if Guided.StepDoneByIndex(i, log) then Guided.RecordDone(s) else Guided.activeStickies[i] = true end
      Guided_Save.step = i + 1
    elseif Guided.StepDoneByIndex(i, log) then
      Guided.RecordDone(s)                 -- auto-completed -> remember across reloads
      Guided_Save.step = i + 1
    elseif s and not Guided.StepGateMet(s, log) then
      Guided_Save.step = i + 1             -- quest-state gate not met -> skip (not "done")
    else
      break
    end
  end
  Guided.UpdateUI()
end

function Guided.CheckAuto()
  Guided.SkipForward()
end

-- ------------------------------------------------- auto quest interaction ----
-- Opt-in (Guided_Save.auto): when you talk to an NPC, auto-accept the quests the
-- guide wants here and auto-turn-in the ones it expects, incl. picking the reward
-- when there's no choice. 1.12 has NO secure/taint system, so this is allowed in
-- combat too. We only act on quests the CURRENT step / pinned stickies / the next
-- few steps reference (matched by NAME via the bundled DB), so unrelated quests are
-- left alone. Quests with a CHOICE of rewards are left for you to pick.

-- titles the guide wants right now: accept set + turnin set (lowercased)
function Guided.WantedQuests()
  local accept, turnin = {}, {}
  if not Guided.active then return accept, turnin end
  local cur = Guided_Save.step or 1
  local idxs = {}
  for d = 0, 5 do idxs[cur + d] = true end          -- current + small lookahead (NPC chains)
  if Guided.activeStickies then
    for k in pairs(Guided.activeStickies) do idxs[k] = true end
  end
  for i in pairs(idxs) do
    local s = Guided.active[i]
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
-- ERRORS on a 1.12 client. GetGossipAvailableQuests/GetGossipActiveQuests
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
function Guided.HandleQuestEvent(e)
  if Guided.debug then
    local na = table.getn(GossipQuestList(GetGossipAvailableQuests))
    Print("|cff88ccff[dbg]|r "..e.." auto="..tostring(Guided_Save and Guided_Save.auto)
      .." title='"..tostring((GetTitleText and GetTitleText()) or "").."' gossipAvail="..tostring(na))
  end
  if not Guided_Save or not Guided_Save.auto then return end
  local accept, turnin = Guided.WantedQuests()
  if Guided.debug then
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
Guided.rows = Guided.rows or {}
Guided.rowY = Guided.rowY or {}
local BASE_SCALE = 0.8   -- intrinsic design scale; the user "Window scale" slider multiplies this (1.0 = this size)
local ROW_WIDTH = 286
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

-- objective/instruction icons (matches RXP's picks): kill = crossed swords,
-- collect = loot bag, generic complete = cross, "talk to" = speech bubble.
local ICON_KILL    = "Interface\\GossipFrame\\BattleMasterGossipIcon"
local ICON_COLLECT = "Interface\\GossipFrame\\VendorGossipIcon"
local ICON_DONE    = "Interface\\GossipFrame\\HealerGossipIcon"
local ICON_GOSSIP  = "Interface\\GossipFrame\\GossipGossipIcon"

local function ElementIcon(el, otype, isTurnin)
  if el.kind == "complete" then
    if otype == "monster" then return ICON_KILL
    elseif otype == "item" or otype == "object" then return ICON_COLLECT
    else return ICON_DONE end
  elseif el.kind == "note" then
    local low = el.text and lc(el.text)
    if low and (string.find(low, "talk to", 1, true) or string.find(low, "speak to", 1, true)) then
      return isTurnin and KIND_ICON.turnin or ICON_GOSSIP   -- speech bubble, unless it's a turn-in
    end
    return nil
  end
  return KIND_ICON[el.kind]
end
-- text only -- the type icon is drawn as a real Texture beside the line, since
-- 1.12 FontStrings can't render inline |T..|t escapes.
-- strip |cAARRGGBB...|r color codes (used to grey-out finished steps uniformly)
local function StripColor(t)
  t = string.gsub(t, "|c%x%x%x%x%x%x%x%x", "")
  t = string.gsub(t, "|r", "")
  return t
end

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
-- live "x/y" count + done flag for a single quest objective (for inline display).
-- the quest log's objective leaderboard text + done flag, e.g.
-- "Young Nightsaber slain: 3/7". nil if the quest isn't in the log.
local function ObjectiveText(qid, obj)
  local nm = QuestName(qid); if not nm or not obj then return nil end
  nm = lc(nm)
  local sel = GetQuestLogSelection()
  local total = GetNumQuestLogEntries()
  local txt, done, otype
  for i = 1, total do
    local title, _, _, isHeader = GetQuestLogTitle(i)
    if title and not isHeader and lc(title) == nm then
      SelectQuestLogEntry(i)
      local t, ty, d = GetQuestLogLeaderBoard(obj)
      txt = t; otype = ty; done = d
      break
    end
  end
  if sel then SelectQuestLogEntry(sel) end
  return txt, done, otype
end

local function ObjectiveCount(qid, obj)
  local nm = QuestName(qid); if not nm then return nil, nil end
  nm = lc(nm)
  local sel = GetQuestLogSelection()
  local total = GetNumQuestLogEntries()
  local cnt, done
  for i = 1, total do
    local title, _, _, isHeader = GetQuestLogTitle(i)
    if title and not isHeader and lc(title) == nm then
      SelectQuestLogEntry(i)
      local txt, _, d = GetQuestLogLeaderBoard(obj)
      done = d
      if txt then local _, _, c = string.find(txt, "(%d+%s*/%s*%d+)"); cnt = c end
      break
    end
  end
  if sel then SelectQuestLogEntry(sel) end
  return cnt, done
end

-- element line plus its live "x/y" count (used for .complete lines on the current
-- step AND on pinned sticky steps).
local function ElementLineWithCount(el)
  local line = ElementLine(el)
  if el.kind == "complete" and el.id and el.obj then
    local cnt, edone = ObjectiveCount(el.id, el.obj)
    if cnt then line = line.."  |c"..(edone and "ff66cc66" or "ffffe080")..cnt.."|r"
    elseif edone then line = line.."  |cff66cc66done|r" end
  end
  return line
end

local function StepHasNote(step)
  for j = 1, table.getn(step.elements or {}) do
    local el = step.elements[j]
    if el.kind == "note" and CondOK(el.cond) then return true end
  end
  return false
end

-- combined counts for a step's .complete objectives: live "3/7, 1/4" when the
-- quest is in the log, else the target totals. Returned colored, or nil.
local function StepCounts(step, live)
  local q = step.quests; if not q then return nil end
  local parts = {}
  for k = 1, table.getn(q) do
    local it = q[k]
    if it.action == "complete" and it.obj and CondOK(it.cond) then
      local pr
      if live then pr = ObjectiveCount(it.id, it.obj) end
      if not pr and it.target then pr = it.target end
      if pr then tinsert(parts, tostring(pr)) end
    end
  end
  if table.getn(parts) == 0 then return nil end
  return "|cffffe080"..table.concat(parts, ", ").."|r"
end

-- build "Kill <mob> (3/7) and <mob> (1/4)" from .complete objective labels + counts
-- (live when in the log, else target totals). nil if no labelled objectives.
local function StepKillLine(step, live)
  local q = step.quests; if not q then return nil end
  local items = {}
  for k = 1, table.getn(q) do
    local it = q[k]
    if it.action == "complete" and it.obj and it.label and CondOK(it.cond) then
      local cnt
      if live then cnt = ObjectiveCount(it.id, it.obj) end
      if not cnt and it.target then cnt = tostring(it.target) end
      tinsert(items, { label = it.label, cnt = cnt })
    end
  end
  if table.getn(items) == 0 then return nil end
  local _, _, verb = string.find(items[1].label, "^(%a+)")
  local parts = {}
  for i = 1, table.getn(items) do
    local mob = items[i].label
    if verb then mob = string.gsub(mob, "^"..verb.."%s+", "") end   -- strip the shared verb
    local seg = "|cffff8080"..mob.."|r"
    if items[i].cnt then seg = seg.." |cffffe080("..items[i].cnt..")|r" end
    tinsert(parts, seg)
  end
  return (verb and (verb.." ") or "")..table.concat(parts, " and ")
end

local function ObjectiveProgress(step)
  local done, total = 0, 0
  if not step or table.getn(step.quests) == 0 then return 0, 0 end
  local sel = GetQuestLogSelection()
  local n = GetNumQuestLogEntries()
  for k = 1, table.getn(step.quests) do
    local q = step.quests[k]
    local nm = CondOK(q.cond) and QuestName(q.id)
    if nm and q.action == "complete" then
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
  er.check = CreateFrame("CheckButton", nil, er, "UIRadioButtonTemplate")
  er.check:SetWidth(18); er.check:SetHeight(18)
  er.check:SetPoint("TOPLEFT", er, "TOPLEFT", 1, -1)
  local rn = er.check:GetNormalTexture(); if rn then rn:SetVertexColor(1, 0.96, 0.85, 0.95) end  -- bright warm ring
  local ck = er.check:GetCheckedTexture(); if ck then ck:SetVertexColor(0.3, 1, 0.3) end    -- green dot
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
  er:SetScript("OnMouseUp", function() if arg1 == "RightButton" then Guided.OpenMenu(er:GetParent().stepIndex, "cursor") end end)
  r.elems[j] = er
  return er
end

-- use a quest item by id: find it in the bags (its link carries item:<id>:) and
-- use it. No item-name DB needed; works in combat (1.12 has no secure restrictions).
function Guided.FindItem(id)
  if not id then return end
  for bag = 0, 4 do
    local slots = GetContainerNumSlots(bag) or 0
    for slot = 1, slots do
      local link = GetContainerItemLink(bag, slot)
      if link and string.find(link, "item:"..id..":", 1, true) then return bag, slot end
    end
  end
end

function Guided.UseItemById(id)
  local bag, slot = Guided.FindItem(id)
  if bag then UseContainerItem(bag, slot); return true end
  Print("That quest item isn't in your bags.")
  return false
end

-- use the current step's quest items: the next one actually in your bags (cycles
-- if several are present). Bind via a macro: /guided use
function Guided.UseStep()
  local step = Guided.CurrentStep()
  local items = step and step.useitems
  if not items or table.getn(items) == 0 then return end
  local n = table.getn(items)
  local start = Guided.useIdx or 0
  for k = 1, n do
    local idx = mymod(start + k - 1, n) + 1
    local bag, slot = Guided.FindItem(items[idx])
    if bag then Guided.useIdx = idx; UseContainerItem(bag, slot); return end
  end
  Print("None of this step's quest items are in your bags.")
end

local function BuildRow(parent, name)
  local r = CreateFrame("Button", name, parent)
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
  r.check = r:CreateTexture(nil, "OVERLAY")           -- done indicator: filled green radio dot
  r.check:SetWidth(14); r.check:SetHeight(14)
  r.check:SetPoint("CENTER", r.badgeBg, "CENTER", 0, 0)
  r.check:SetTexture("Interface\\Buttons\\UI-RadioButton")
  r.check:SetTexCoord(0.25, 0.5, 0, 1)            -- the "checked" dot frame
  r.check:SetVertexColor(0.3, 1, 0.3)
  r.check:Hide()
  r.numStrike = r:CreateTexture(nil, "OVERLAY"); r.numStrike:SetTexture(1, 1, 1, 0.6); r.numStrike:Hide()
  r.fsStrike = r:CreateTexture(nil, "OVERLAY"); r.fsStrike:SetTexture(1, 1, 1, 0.5); r.fsStrike:Hide()
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
  -- action buttons (shown only on the current step)
  r.targetBtn = CreateFrame("Button", nil, r, "UIPanelButtonTemplate")
  r.targetBtn:SetHeight(18); r.targetBtn:Hide()
  r.targetBtn:SetScript("OnClick", function() Guided.TargetStep() end)
  r.useBtn = CreateFrame("Button", nil, r, "UIPanelButtonTemplate")
  r.useBtn:SetHeight(18); r.useBtn:SetWidth(120); r.useBtn:SetText("Use quest item"); r.useBtn:Hide()
  r.useBtn:SetScript("OnClick", function() Guided.UseStep() end)
  -- left-click does nothing; RIGHT-click opens the menu (with a "Go to step" option)
  r:SetScript("OnMouseUp", function()
    if arg1 == "RightButton" then Guided.OpenMenu(this.stepIndex, "cursor") end
  end)
  if parent == GuidedScrollChild then            -- hover highlight on list rows only
    r:SetHighlightTexture("Interface\\Buttons\\WHITE8X8")
    local hl = r:GetHighlightTexture(); if hl then hl:SetVertexColor(1, 1, 1, 0.08) end
  end
  return r
end

local function GetRow(i)
  if Guided.rows[i] then return Guided.rows[i] end
  local r = BuildRow(GuidedScrollChild, "GuidedRow"..i)
  Guided.rows[i] = r
  return r
end

local function GetStepRow(k)
  Guided.stepRows = Guided.stepRows or {}
  if Guided.stepRows[k] then return Guided.stepRows[k] end
  local r = BuildRow(GuidedStepFrame, "GuidedStepRow"..k)
  Guided.stepRows[k] = r
  return r
end

-- lay out one step's row; returns its height. mode: current renders the expanded
-- checkbox card, others render the compact line.
local function RenderRow(r, step, i, cur, expand)
  local active = Guided.activeStickies and Guided.activeStickies[i]
  local isCur = (i == cur)
  r.stepIndex = i

  -- badge + status styling
  local dn = Guided.dispNum and Guided.dispNum[i]
  if dn then r.num:SetText(tostring(dn)) end
  if isCur then
    -- highlight the current step in the list, but not in the dedicated top frame
    if expand then r.bg:Hide() else r.bg:Show(); r.bg:SetTexture(0.16, 0.42, 0.85, 0.22) end
    r.accent:Show(); r.accent:SetTexture(0.3, 1, 0.3, 0.9)
    r.check:Hide(); r.num:Show()
  elseif active then
    r.bg:Show(); r.bg:SetTexture(0.85, 0.7, 0.1, 0.14)
    r.accent:Show(); r.accent:SetTexture(1, 0.8, 0.1, 0.9)
    r.check:Hide(); r.num:Show()
  else
    r.bg:Hide(); r.accent:Hide()
    r.check:Hide(); r.num:Show()
  end
  local dim = (i < cur and not active)
  r.num:SetAlpha(dim and 0.5 or 1)
  -- sticky side-steps keep their slot in the numbering (so the next main step keeps
  -- the right number) but don't show a number badge -- they read as side steps.
  if dn and not step.sticky then r.num:Show(); r.badgeBg:Show() else r.num:Hide(); r.badgeBg:Hide() end
  r.numStrike:Hide(); r.fsStrike:Hide()

  local h
  if expand then
    -- expanded: one checkbox row per element + objective lines + progress bar
    r.fs:Hide(); r.kindIcon:Hide()
    local y = 1
    local els = step.elements or {}
    local nEls = table.getn(els)
    local hasTickable = false
    for j = 1, nEls do
      if CondOK(els[j].cond) and els[j].kind ~= "note" then hasTickable = true; break end
    end
    local stepTurnin = false
    for j = 1, nEls do if els[j].kind == "turnin" then stepTurnin = true; break end end
    local vis = 0
    for j = 1, nEls do
      local el = els[j]
      if CondOK(el.cond) then
        vis = vis + 1
        local er = GetElemRow(r, vis)
        er.element = el
        er.tip = el.text
        local radio = (el.kind ~= "note") or not hasTickable   -- every step gets >=1 radio (skippable)
        local txt, otype
        if el.kind == "complete" and el.id and el.obj then
          local ot, od, ty = ObjectiveText(el.id, el.obj)            -- "Young Nightsaber slain: 0/5"
          txt = ot or ElementLineWithCount(el); otype = ty
          if od ~= nil then el.checked = od and true or false end     -- radio auto-tracks the kill
        else
          txt = ElementLine(el)
        end
        local ip = ElementIcon(el, otype, stepTurnin)
        local fx = 2
        if radio then er.check:Show(); er:SetScript("OnClick", er._onclick); fx = 22
        else er.check:Hide(); er:SetScript("OnClick", nil) end
        if ip then
          er.icon:ClearAllPoints(); er.icon:SetPoint("TOPLEFT", er, "TOPLEFT", fx, -2)
          er.icon:SetTexture(ip); er.icon:Show(); fx = fx + 16
        else er.icon:Hide() end
        er.fs:ClearAllPoints(); er.fs:SetPoint("TOPLEFT", er, "TOPLEFT", fx, -2); er.fs:SetWidth(CONTENT_W - fx)
        er.fs:SetText(txt)
        er.check:SetChecked(el.checked and true or false)
        local eh = FSHeight(er.fs); if eh < 18 then eh = 18 end
        er:SetWidth(CONTENT_W); er:SetHeight(eh)
        er:ClearAllPoints(); er:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y)
        er:Show()
        y = y + eh + (vis > 1 and 0 or 3)   -- substeps flush; a little space under the top line
      end
    end
    -- (objective counts are shown inline on each .complete line above)
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
        if CondOK(el.cond) and (el.kind ~= "note" or not hasTickable) then
          n = n + 1
          if not el.checked then return end
        end
      end
      if n > 0 then Guided.Advance() end
    end
    -- Target / Use action buttons (side by side, one row)
    local hasT = step.targets and table.getn(step.targets) > 0
    local hasU = step.useitems and table.getn(step.useitems) > 0
    if hasT or hasU then y = y + 6 end
    if hasT then
      local nt = table.getn(step.targets)
      r.targetBtn:SetText(nt > 1 and ("Target ("..nt..")") or "Target"); r.targetBtn:SetWidth(90)
      r.targetBtn:ClearAllPoints(); r.targetBtn:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y)
      r.targetBtn:Show()
    else r.targetBtn:Hide() end
    if hasU then
      local nu = table.getn(step.useitems)
      r.useBtn:SetText(nu > 1 and ("Use item ("..nu..")") or "Use quest item"); r.useBtn:SetWidth(110)
      r.useBtn:ClearAllPoints()
      if hasT then r.useBtn:SetPoint("LEFT", r.targetBtn, "RIGHT", 6, 0)
      else r.useBtn:SetPoint("TOPLEFT", r, "TOPLEFT", CONTENT_X, -y) end
      r.useBtn:Show()
    else r.useBtn:Hide() end
    if hasT or hasU then y = y + 20 end
    h = y + 4
  else
    -- compact: hide expansion, single body with one leading type icon
    r.bar:Hide(); r.targetBtn:Hide(); r.useBtn:Hide()
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
    local hasNote = StepHasNote(step)
    local killLine = hasNote and StepKillLine(step, active) or nil
    local lines = {}
    local injected = false
    for j = 1, table.getn(step.elements or {}) do
      local el = step.elements[j]
      if CondOK(el.cond) and not (el.auto and hasNote) then
        local line = active and ElementLineWithCount(el) or ElementLine(el)
        if el.kind == "note" and not injected and killLine then line = killLine; injected = true end
        tinsert(lines, line)
      end
    end
    local body = table.concat(lines, "\n")
    if body == "" then body = "|cff777777(no description)|r" end
    r.fs:ClearAllPoints(); r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", fx, -4); r.fs:SetWidth(ROW_WIDTH - fx - 6)
    if dim then body = StripColor(body) end          -- finished steps: uniform grey, no colors
    r.fs:SetText(body)
    r.fs:SetTextColor(dim and 0.5 or 1, dim and 0.5 or 1, dim and 0.5 or 1)
    r.fs:SetAlpha(dim and 0.9 or 1)
    r.fs:Show()
    h = FSHeight(r.fs) + 8
  end

  if h < 20 then h = 20 end
  r:SetHeight(h); r:SetWidth(ROW_WIDTH)
  return h
end

function Guided.ScrollToStep(cur)
  if not GuidedScrollFrame then return end
  local maxScroll = GuidedScrollChild:GetHeight() - GuidedScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local target = (Guided.rowY[cur] or 0) - 24
  if target < 0 then target = 0 end
  if target > maxScroll then target = maxScroll end
  GuidedScrollFrame:SetVerticalScroll(target)
end

function Guided.WheelScroll(dir)
  if not GuidedScrollFrame then return end
  local maxScroll = GuidedScrollChild:GetHeight() - GuidedScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local v = GuidedScrollFrame:GetVerticalScroll() - (dir or 0) * 36
  if v < 0 then v = 0 end
  if v > maxScroll then v = maxScroll end
  GuidedScrollFrame:SetVerticalScroll(v)
end

-- countdown bar for ".timer" steps (we draw our own; RXP's LibCandyBar is Ace3,
-- unavailable on 1.12). Starts on arrival at a timed step, hides at 0.
local function EnsureTimerBar()
  if GuidedTimerBar then return end
  local tb = CreateFrame("Frame", "GuidedTimerBar", UIParent)
  tb:SetWidth(220); tb:SetHeight(22)
  tb:SetPoint("TOP", UIParent, "TOP", 0, -140)
  tb:SetBackdrop({ bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", tile = true, tileSize = 16, edgeSize = 12,
    insets = { left = 3, right = 3, top = 3, bottom = 3 } })
  tb:SetBackdropColor(0, 0, 0, 0.85)
  tb:SetMovable(true); tb:EnableMouse(true); tb:RegisterForDrag("LeftButton")
  tb:SetScript("OnDragStart", function() this:StartMoving() end)
  tb:SetScript("OnDragStop", function() this:StopMovingOrSizing() end)
  local bar = CreateFrame("StatusBar", "GuidedTimerBarFill", tb)
  bar:SetPoint("TOPLEFT", tb, "TOPLEFT", 4, -4); bar:SetPoint("BOTTOMRIGHT", tb, "BOTTOMRIGHT", -4, 4)
  bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
  bar:SetStatusBarColor(0.2, 0.55, 1); bar:SetMinMaxValues(0, 1); bar:SetValue(1)
  local lbl = bar:CreateFontString("GuidedTimerBarLabel", "OVERLAY", "GameFontHighlightSmall")
  lbl:SetPoint("LEFT", bar, "LEFT", 6, 0)
  local tt = bar:CreateFontString("GuidedTimerBarTime", "OVERLAY", "GameFontHighlightSmall")
  tt:SetPoint("RIGHT", bar, "RIGHT", -6, 0)
  tb:SetScript("OnUpdate", function()
    if not Guided.timerEnd then return end
    local rem = Guided.timerEnd - GetTime()
    if rem <= 0 then
      GuidedTimerBarFill:SetValue(0); GuidedTimerBarTime:SetText("0:00")
      this:Hide(); Guided.timerEnd = nil
      return
    end
    local total = Guided.timerTotal or rem
    GuidedTimerBarFill:SetValue(rem / total)
    local sec = math.floor(rem)
    GuidedTimerBarTime:SetText(string.format("%d:%02d", math.floor(sec / 60), sec - math.floor(sec / 60) * 60))
  end)
  tb:Hide()
end

function Guided.UpdateTimerBar()
  local cur = Guided.active and Guided.active[Guided_Save.step]
  local t = cur and cur.timer
  if not t then
    if GuidedTimerBar then GuidedTimerBar:Hide() end
    Guided.timerStep = nil
    return
  end
  EnsureTimerBar()
  if Guided.timerStep ~= cur then         -- newly arrived at this timed step: (re)start
    Guided.timerStep = cur
    Guided.timerEnd = GetTime() + t.secs
    Guided.timerTotal = t.secs
    GuidedTimerBarLabel:SetText(t.label or "Timer")
    GuidedTimerBar:Show()
  end
end

function Guided.UpdateUI()
  if not GuidedFrame then return end
  local g = Guided.CurrentGuide()
  if not g or not Guided.active then
    getglobal("GuidedFrameTitle"):SetText("Guided -- no guide")
    getglobal("GuidedFrameCounter"):SetText("")
    if GuidedFrameClassIcon then GuidedFrameClassIcon:Hide() end
    local r = GetRow(1); r.stepIndex = nil; r.bg:Hide(); r.accent:Hide(); r.num:Hide(); r.check:Hide(); r.bar:Hide(); r.kindIcon:Hide(); r.targetBtn:Hide(); r.useBtn:Hide()
    if r.elems then local k=1; while r.elems[k] do r.elems[k]:Hide(); k=k+1 end end
    r.fs:ClearAllPoints(); r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", 8, -4); r.fs:SetWidth(ROW_WIDTH - 16)
    r.fs:Show(); r.fs:SetAlpha(1)
    r.fs:SetText("No guide loaded.\nType |cffffd200/guided list|r, then |cffffd200/guided load <name>|r")
    r:SetHeight(FSHeight(r.fs) + 8); r:SetWidth(ROW_WIDTH)
    r:ClearAllPoints(); r:SetPoint("TOPLEFT", GuidedScrollChild, "TOPLEFT", 0, 0); r:Show()
    local idx = 2; while Guided.rows[idx] do Guided.rows[idx]:Hide(); idx = idx + 1 end
    GuidedScrollChild:SetHeight(1)
    if GuidedStepFrame then GuidedStepFrame:Hide() end
    Guided.SetWaypoint(nil)
    return
  end
  getglobal("GuidedFrameTitle"):SetText(g.name)
  local n = table.getn(Guided.active)
  local cur = Guided_Save.step or 1
  getglobal("GuidedFrameCounter"):SetText((Guided.dispNum and Guided.dispNum[cur] or cur).." / "..(Guided.numMain or n))

  -- header class icon
  if GuidedFrameClassIcon then
    local tc = CLASS_TC[PLAYER_CLASS or ""]
    if tc then
      GuidedFrameClassIcon:SetTexCoord(tc[1], tc[2], tc[3], tc[4]); GuidedFrameClassIcon:Show()
    else GuidedFrameClassIcon:Hide() end
  end

  -- follow the (resizable) frame width so rows fill the scroll area
  Guided.rowY = {}
  local y = 0
  for i = 1, n do
    local st = Guided.active[i]
    local r = GetRow(i)
    local doneHidden = Guided_Save.hidedone and i < cur and not (Guided.activeStickies and Guided.activeStickies[i])
    if doneHidden or (st.xpGate and st.xpGate.skip and Guided.XpGateMet(st.xpGate)) then
      r:Hide(); Guided.rowY[i] = y          -- completed (when "hide completed") or inapplicable gate
    else
      local h = RenderRow(r, st, i, cur, false)
      r:ClearAllPoints()
      r:SetPoint("TOPLEFT", GuidedScrollChild, "TOPLEFT", 0, -y)
      r:Show()
      Guided.rowY[i] = y
      y = y + h
    end
  end
  local idx = n + 1
  while Guided.rows[idx] do Guided.rows[idx]:Hide(); idx = idx + 1 end

  -- active steps (pinned stickies + current), stacked in the linked top frame
  if GuidedStepFrame then
    local order = {}
    if Guided.activeStickies then
      local sk = {}
      for idx in pairs(Guided.activeStickies) do if idx ~= cur then tinsert(sk, idx) end end
      table.sort(sk)
      for j = 1, table.getn(sk) do tinsert(order, sk[j]) end    -- sticky side-steps first (above)
    end
    if Guided.active[cur] then tinsert(order, cur) end           -- main (current) step last (below)
    local sy, k = 6, 0
    for oi = 1, table.getn(order) do
      local st = Guided.active[order[oi]]
      if st then
        k = k + 1
        local sr = GetStepRow(k)
        local sh = RenderRow(sr, st, order[oi], cur, true)
        sr:ClearAllPoints(); sr:SetPoint("TOPLEFT", GuidedStepFrame, "TOPLEFT", 6, -sy)
        sr:Show()
        sy = sy + sh + 3
      end
    end
    if Guided.stepRows then local j = k + 1; while Guided.stepRows[j] do Guided.stepRows[j]:Hide(); j = j + 1 end end
    if k > 0 then
      GuidedStepFrame:SetHeight(sy + 4)
      GuidedStepFrame:SetBackdropColor(0.05, 0.05, 0.07, Guided_Save.opacity or 0.92)
      GuidedStepFrame:Show()
    else
      GuidedStepFrame:Hide()
    end
  end

  GuidedScrollChild:SetWidth(ROW_WIDTH)
  GuidedScrollChild:SetHeight(y > 0 and y or 1)
  Guided.ScrollToStep(cur)
  Guided.SetWaypoint(Guided.active[cur])
  Guided.UpdateTimerBar()
end

-- ------------------------------------------------------ guide-select menu ----
-- RXP-style cog menu: a native UIDropDownMenu whose top level has Options +
-- Auto-detect, then one expandable submenu per guide #group (subcategory); the
-- submenu lists that group's guides (current one checked). Click a guide to load.
function Guided.LoadGuideByName(name)
  if not Guided.guides[name] then return end
  Guided_Save.guide = name; Guided_Save.step = 1
  Guided.seen = {}; Guided.activeStickies = {}
  Guided.BuildActive(); Guided.SkipForward(); Guided.Show()
  Print("Loaded: |cffffd200"..name.."|r")
end

local function byLevel(a, b)
  local la = Guided.guides[a].lo or 999
  local lb = Guided.guides[b].lo or 999
  if la ~= lb then return la < lb end
  return a < b
end

-- resolve a guide's subcategory for THIS character: a plain #subgroup, else the
-- first conditional #subgroup whose "<<" condition matches (e.g. per-class sets).
function Guided.GuideSubgroup(g)
  if g.subgroup then return g.subgroup end
  if g.subgroupCond then
    for i = 1, table.getn(g.subgroupCond) do
      if Guided.EvalCondition(g.subgroupCond[i].cond) then return g.subgroupCond[i].name end
    end
  end
  return nil
end

-- a guide is visible if it has no faction or matches the player's
function Guided.GuideVisible(g)
  return g and (not g.faction or g.faction == Guided.me.faction)
end

function Guided.MenuGroups()
  local seen, order = {}, {}
  for i = 1, table.getn(Guided.guideOrder) do
    local g = Guided.guides[Guided.guideOrder[i]]
    if Guided.GuideVisible(g) then
      local grp = g.group or "Other"
      if not seen[grp] then seen[grp] = true; tinsert(order, grp) end
    end
  end
  return order
end

-- unique subgroups (subcategories) within a group, in registration order
function Guided.SubgroupsInGroup(grp)
  local seen, order = {}, {}
  for i = 1, table.getn(Guided.guideOrder) do
    local g = Guided.guides[Guided.guideOrder[i]]
    local sub = Guided.GuideVisible(g) and Guided.GuideSubgroup(g)
    if ((g.group) or "Other") == grp and sub and not seen[sub] then
      seen[sub] = true; tinsert(order, sub)
    end
  end
  return order
end

-- guides in a group, sorted by start level. sub: nil = all; a string = that
-- subgroup only; false = only guides with no subgroup.
function Guided.GuidesInGroup(grp, sub)
  local out = {}
  for i = 1, table.getn(Guided.guideOrder) do
    local gname = Guided.guideOrder[i]
    local g = Guided.guides[gname]
    if Guided.GuideVisible(g) and ((g.group) or "Other") == grp then
      local gsub = Guided.GuideSubgroup(g)
      if sub == nil or (sub == false and not gsub) or (sub and gsub == sub) then
        tinsert(out, gname)
      end
    end
  end
  table.sort(out, byLevel)
  return out
end

function Guided.MenuInit()
  local level = UIDROPDOWNMENU_MENU_LEVEL or 1
  local info
  if level == 1 then
    if Guided.menuStep then
      local target = Guided.menuStep
      info = {}; info.text = "Go to step "..target; info.notCheckable = 1
      info.func = function() Guided.SetStep(target, target < (Guided_Save.step or 1) and -1 or 1); CloseDropDownMenus() end
      UIDropDownMenu_AddButton(info, 1)
    end
    info = {}; info.text = "Guided"; info.isTitle = 1; info.notCheckable = 1
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Options..."; info.notCheckable = 1
    info.func = function() Guided.ToggleOptions(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Import guide..."; info.notCheckable = 1
    info.func = function() Guided.ShowImport(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Dungeons..."; info.notCheckable = 1
    info.func = function() Guided.ShowDungeons(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Leveling tracker"; info.checked = (Guided_Save.tracker == true)
    info.func = function() Guided.ToggleTracker(); CloseDropDownMenus() end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Auto-detect my guide"; info.notCheckable = 1
    info.func = function()
      local best = Guided.AutoSelectGuide()
      if best then Guided.LoadGuideByName(best) end
      CloseDropDownMenus()
    end
    UIDropDownMenu_AddButton(info, 1)

    info = {}; info.text = "Guides"; info.isTitle = 1; info.notCheckable = 1
    UIDropDownMenu_AddButton(info, 1)

    local groups = Guided.MenuGroups()
    for gi = 1, table.getn(groups) do
      info = {}; info.text = groups[gi]; info.notCheckable = 1
      info.hasArrow = 1; info.value = groups[gi]
      UIDropDownMenu_AddButton(info, 1)
    end
  elseif level == 2 then
    local grp = UIDROPDOWNMENU_MENU_VALUE
    local subs = Guided.SubgroupsInGroup(grp)
    if table.getn(subs) > 0 then
      -- subcategory tier: one arrow per subgroup, then any guides with no subgroup
      for si = 1, table.getn(subs) do
        info = {}; info.text = subs[si]; info.notCheckable = 1
        info.hasArrow = 1; info.value = grp.."\1"..subs[si]
        UIDropDownMenu_AddButton(info, 2)
      end
      local loose = Guided.GuidesInGroup(grp, false)
      for ni = 1, table.getn(loose) do
        local gname = loose[ni]
        info = {}; info.text = gname; info.checked = (Guided_Save.guide == gname)
        info.func = function() Guided.LoadGuideByName(gname); CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, 2)
      end
    else
      local names = Guided.GuidesInGroup(grp)
      for ni = 1, table.getn(names) do
        local gname = names[ni]
        info = {}; info.text = gname; info.checked = (Guided_Save.guide == gname)
        info.func = function() Guided.LoadGuideByName(gname); CloseDropDownMenus() end
        UIDropDownMenu_AddButton(info, 2)
      end
    end
  elseif level == 3 then
    local _, _, grp, sub = string.find(UIDROPDOWNMENU_MENU_VALUE or "", "^(.-)\1(.*)$")
    local names = Guided.GuidesInGroup(grp, sub)
    for ni = 1, table.getn(names) do
      local gname = names[ni]
      info = {}; info.text = gname; info.checked = (Guided_Save.guide == gname)
      info.func = function() Guided.LoadGuideByName(gname); CloseDropDownMenus() end
      UIDropDownMenu_AddButton(info, 3)
    end
  end
end

-- open the cog dropdown. A stepIndex (from a right-clicked row) adds a
-- "Go to step N" entry at the top, alongside the Options/Guides menu.
function Guided.OpenMenu(stepIndex, anchor)
  if not GuidedMenu then return end
  Guided.menuStep = stepIndex
  -- Always anchor to the cog (a stable left-side point), NOT the cursor: vanilla
  -- opens submenus to the RIGHT of the parent, and a cursor anchor near a screen
  -- edge flips them back over the parent (menus "clip into each other"). Close any
  -- stale menu first so re-opening never stacks frames.
  CloseDropDownMenus()
  ToggleDropDownMenu(1, nil, GuidedMenu, "GuidedFrameCog", 0, 0)
end

function Guided.ToggleMenu()
  Guided.OpenMenu(nil, "GuidedFrameCog")
end

function Guided.ApplyScale()
  local f = GuidedFrame; if not f then return end
  f:SetScale(BASE_SCALE * (Guided_Save.scale or 1))
  f:ClearAllPoints()
  local pos = Guided_Save.pos
  if pos and pos.x and pos.y then
    local eff = f:GetEffectiveScale(); if not eff or eff <= 0 then eff = 1 end
    -- pos is stored in screen pixels; convert to this frame's (scaled) anchor units
    f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", pos.x / eff, pos.y / eff)
  else
    f:SetPoint("CENTER", UIParent, "CENTER", 0, 80)
  end
end

function Guided.ApplyStepAnchor()
  local sfr = GuidedStepFrame; if not sfr or not GuidedFrame then return end
  sfr:ClearAllPoints()
  if Guided_Save.stepbelow then
    sfr:SetPoint("TOPLEFT", GuidedFrame, "BOTTOMLEFT", 0, -6)
    sfr:SetPoint("TOPRIGHT", GuidedFrame, "BOTTOMRIGHT", 0, -6)
  else
    sfr:SetPoint("BOTTOMLEFT", GuidedFrame, "TOPLEFT", 0, 6)
    sfr:SetPoint("BOTTOMRIGHT", GuidedFrame, "TOPRIGHT", 0, 6)
  end
end

local function CreateUI()
  if GuidedFrame then return end
  local f = CreateFrame("Frame", "GuidedFrame", UIParent)
  f:SetWidth(310); f:SetHeight(Guided_Save.h or 230)   -- width fixed; height resizable
  f:SetResizable(true)
  if f.SetMinResize then f:SetMinResize(310, 170) end
  if f.SetMaxResize then f:SetMaxResize(310, 900) end
  f:SetPoint("CENTER", UIParent, "CENTER", 0, 80)   -- initial; Guided.ApplyScale() re-anchors to the saved (screen-space) pos
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0.05, 0.05, 0.07, Guided_Save.opacity or 0.92)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() if not Guided_Save.locked then this:StartMoving() end end)
  f:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
    local eff = this:GetEffectiveScale(); if not eff or eff <= 0 then eff = 1 end
    Guided_Save.pos = { x = this:GetLeft() * eff, y = this:GetTop() * eff }   -- screen pixels
  end)
  f:SetScript("OnMouseUp", function() if arg1 == "RightButton" then Guided.OpenMenu(nil, "cursor") end end)

  -- header: cog menu + class icon + guide name + counter, with a divider line
  local cog = CreateFrame("Button", "GuidedFrameCog", f)
  cog:SetWidth(18); cog:SetHeight(18)
  cog:SetPoint("TOPLEFT", f, "TOPLEFT", 8, -7)
  cog:SetNormalTexture("Interface\\Icons\\INV_Misc_Gear_01")
  cog:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
  cog:SetScript("OnClick", function() Guided.ToggleMenu() end)
  cog:SetScript("OnEnter", function()
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT"); GameTooltip:SetText("Guides & Options", 1, 1, 1); GameTooltip:Show()
  end)
  cog:SetScript("OnLeave", function() GameTooltip:Hide() end)

  local cicon = f:CreateTexture("GuidedFrameClassIcon", "OVERLAY")
  cicon:SetWidth(18); cicon:SetHeight(18)
  cicon:SetPoint("LEFT", cog, "RIGHT", 5, 0)
  cicon:SetTexture("Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes")
  cicon:Hide()

  -- hidden dropdown that backs the cog menu
  local menu = CreateFrame("Frame", "GuidedMenu", UIParent, "UIDropDownMenuTemplate")
  UIDropDownMenu_Initialize(menu, Guided.MenuInit, "MENU")

  local title = f:CreateFontString("GuidedFrameTitle", "OVERLAY", "GameFontNormal")
  title:SetPoint("LEFT", cicon, "RIGHT", 6, 0)
  title:SetText("Guided")

  local counter = f:CreateFontString("GuidedFrameCounter", "OVERLAY", "GameFontHighlightSmall")
  counter:SetPoint("TOPRIGHT", f, "TOPRIGHT", -28, -12)

  local divider = f:CreateTexture(nil, "ARTWORK")
  divider:SetPoint("TOPLEFT", f, "TOPLEFT", 10, -30)
  divider:SetPoint("TOPRIGHT", f, "TOPRIGHT", -10, -30)
  divider:SetHeight(1); divider:SetTexture(1, 1, 1, 0.15)

  -- scrolling step list
  local sf = CreateFrame("ScrollFrame", "GuidedScrollFrame", f)
  sf:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -34)
  sf:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -12, 16)
  local cchild = CreateFrame("Frame", "GuidedScrollChild", sf)
  cchild:SetWidth(ROW_WIDTH); cchild:SetHeight(1)
  sf:SetScrollChild(cchild)
  sf:EnableMouseWheel(true)
  sf:SetScript("OnMouseWheel", function() Guided.WheelScroll(arg1) end)

  -- linked top frame: the current step in full detail (sits above the list)
  local sfr = CreateFrame("Frame", "GuidedStepFrame", f)
  sfr:SetHeight(60)
  Guided.ApplyStepAnchor()
  sfr:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 16,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  sfr:SetBackdropColor(0.05, 0.05, 0.07, Guided_Save.opacity or 0.92)
  sfr:Hide()

  local close = CreateFrame("Button", "GuidedFrameClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() Guided.Hide() end)

  -- vertical resize handle: drag the bottom edge up/down (width stays fixed)
  local grip = CreateFrame("Button", "GuidedFrameGrip", f)
  grip:SetWidth(48); grip:SetHeight(9)
  grip:SetPoint("BOTTOM", f, "BOTTOM", 0, 4)
  grip.tex = grip:CreateTexture(nil, "OVERLAY")
  grip.tex:SetAllPoints(); grip.tex:SetTexture("Interface\\Buttons\\WHITE8X8")
  grip.tex:SetVertexColor(1, 1, 1, 0.22)
  grip:SetHighlightTexture("Interface\\Buttons\\WHITE8X8")
  local ghl = grip:GetHighlightTexture(); if ghl then ghl:SetVertexColor(1, 1, 1, 0.18) end
  grip:SetScript("OnMouseDown", function() if not Guided_Save.locked then f:StartSizing("BOTTOM") end end)
  grip:SetScript("OnMouseUp", function()
    f:StopMovingOrSizing()
    Guided_Save.h = f:GetHeight()
    Guided.UpdateUI()
  end)
  grip:SetScript("OnEnter", function()
    GameTooltip:SetOwner(this, "ANCHOR_TOP"); GameTooltip:SetText("Drag to resize height", 1, 1, 1); GameTooltip:Show()
  end)
  grip:SetScript("OnLeave", function() GameTooltip:Hide() end)


  Guided.UpdateUI()
end

-- ------------------------------------------------------------- options UI ----
-- ----------------------------------------------------------- minimap button ----
local function MinimapButtonPos()
  local b = GuidedMinimapButton
  if not b then return end
  local a = math.rad(Guided_Save.mmangle or 210)
  b:ClearAllPoints()
  b:SetPoint("CENTER", Minimap, "CENTER", 80 * math.cos(a), 80 * math.sin(a))
end

local function CreateMinimapButton()
  if GuidedMinimapButton then return end
  local b = CreateFrame("Button", "GuidedMinimapButton", Minimap)
  b:SetWidth(31); b:SetHeight(31); b:SetFrameStrata("MEDIUM"); b:SetFrameLevel(8)
  b:RegisterForClicks("LeftButtonUp", "RightButtonUp")
  b:RegisterForDrag("LeftButton")
  local icon = b:CreateTexture(nil, "BACKGROUND")
  icon:SetWidth(18); icon:SetHeight(18); icon:SetPoint("CENTER", b, "CENTER", 0, 1)
  icon:SetTexture("Interface\\Icons\\INV_Scroll_03")   -- scroll (guide)
  icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)                  -- trim border to fit the ring
  local ring = b:CreateTexture(nil, "OVERLAY")
  ring:SetWidth(53); ring:SetHeight(53); ring:SetPoint("TOPLEFT", b, "TOPLEFT", 0, 0)
  ring:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
  b:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
  b:SetScript("OnClick", function()
    if arg1 == "RightButton" then
      Guided.menuStep = nil; CloseDropDownMenus()
      if GuidedMenu then ToggleDropDownMenu(1, nil, GuidedMenu, "GuidedMinimapButton", 0, 0) end
    else
      Guided.Toggle()
    end
  end)
  b:SetScript("OnDragStart", function()
    this:SetScript("OnUpdate", function()
      local mx, my = Minimap:GetCenter()
      local sc = UIParent:GetEffectiveScale()
      local cx, cy = GetCursorPosition()
      if mx and cx then
        Guided_Save.mmangle = atan2(cy / sc - my, cx / sc - mx)
        MinimapButtonPos()
      end
    end)
  end)
  b:SetScript("OnDragStop", function() this:SetScript("OnUpdate", nil) end)
  b:SetScript("OnEnter", function()
    GameTooltip:SetOwner(this, "ANCHOR_LEFT"); GameTooltip:SetText("Guided", 1, 1, 1)
    GameTooltip:AddLine("Left-click: toggle guide", 0.8, 0.8, 0.8)
    GameTooltip:AddLine("Right-click: menu", 0.8, 0.8, 0.8); GameTooltip:Show()
  end)
  b:SetScript("OnLeave", function() GameTooltip:Hide() end)
  MinimapButtonPos()
end

function Guided.UpdateMinimapButton()
  CreateMinimapButton()
  if Guided_Save.minimap == false then GuidedMinimapButton:Hide() else GuidedMinimapButton:Show() end
end

-- --------------------------------------------------------- leveling tracker ----
local function fmtTime(sec)
  sec = math.floor(sec or 0)
  local h = math.floor(sec / 3600)
  local m = math.floor((sec - h * 3600) / 60)
  if h > 0 then return h.."h "..m.."m" end
  if m > 0 then return m.."m" end
  return sec.."s"
end

function Guided.UpdateTracker()
  if not GuidedTrackerFrame or not GuidedTrackerFrame:IsVisible() then return end
  local t = Guided.trk; if not t then return end
  local elapsed = GetTime() - (t.t0 or GetTime())
  local xps = (elapsed > 0) and (t.xp / elapsed) or 0
  local rem = (UnitXPMax("player") or 1) - (UnitXP("player") or 0)
  local ttl = (xps > 0 and rem > 0) and (rem / xps) or 0
  local lvlTime = GetTime() - (t.lvlStart or t.t0 or GetTime())
  getglobal("GuidedTrackerText"):SetText(
    "|cffffd200Level "..UnitLevel("player").."|r |cff999999("..fmtTime(lvlTime)..")|r\n"..
    "XP/hr: |cff66cc66"..math.floor(xps * 3600).."|r\n"..
    "To level: |cff88ccff"..(ttl > 0 and fmtTime(ttl) or "--").."|r")
end

local function CreateTracker()
  if GuidedTrackerFrame then return end
  local f = CreateFrame("Frame", "GuidedTrackerFrame", UIParent)
  f:SetWidth(152); f:SetHeight(56)
  if Guided_Save.trkpos then
    f:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", Guided_Save.trkpos.x, Guided_Save.trkpos.y)
  else
    f:SetPoint("CENTER", UIParent, "CENTER", 300, 100)
  end
  f:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 14,
    insets = { left = 4, right = 4, top = 4, bottom = 4 } })
  f:SetBackdropColor(0.05, 0.05, 0.07, 0.85)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() this:StartMoving() end)
  f:SetScript("OnDragStop", function()
    this:StopMovingOrSizing(); Guided_Save.trkpos = { x = this:GetLeft(), y = this:GetTop() }
  end)
  local txt = f:CreateFontString("GuidedTrackerText", "OVERLAY", "GameFontHighlightSmall")
  txt:SetPoint("TOPLEFT", f, "TOPLEFT", 8, -6); txt:SetJustifyH("LEFT")
  f.acc = 0
  f:SetScript("OnUpdate", function()
    f.acc = f.acc + (arg1 or 0)
    if f.acc >= 1 then f.acc = 0; Guided.UpdateTracker() end
  end)
  f:Hide()
end

function Guided.ApplyTracker()
  CreateTracker()
  if Guided_Save.tracker then GuidedTrackerFrame:Show(); Guided.UpdateTracker() else GuidedTrackerFrame:Hide() end
end

function Guided.ToggleTracker()
  Guided_Save.tracker = not Guided_Save.tracker
  Guided.ApplyTracker()
end

local OPT_TABS = { "General", "Display", "Routing", "Guides" }
local DUNGEON_NAMES = {
  RFC="Ragefire Chasm", WC="Wailing Caverns", DM="The Deadmines", SFK="Shadowfang Keep",
  BFD="Blackfathom Deeps", STOCKADES="The Stockade", GNOMER="Gnomeregan", SM="Scarlet Monastery",
  RFK="Razorfen Kraul", RFD="Razorfen Downs", ZF="Zul'Farrak", MARA="Maraudon", ST="Sunken Temple",
  BRD="Blackrock Depths", ULDA="Uldaman",
}
local DUNGEON_ORDER = {
  "RFC", "WC", "DM", "SFK", "BFD", "STOCKADES", "GNOMER", "RFK",
  "SM", "RFD", "ULDA", "ZF", "MARA", "ST", "BRD",
}
local dungeonChecks = {}

function Guided.OptTab(name)
  Guided.optTab = name
  for i = 1, table.getn(OPT_TABS) do
    local nm = OPT_TABS[i]
    local pnl = getglobal("GuidedOptPanel"..nm)
    local btn = getglobal("GuidedOptTab"..nm)
    if pnl then if nm == name then pnl:Show() else pnl:Hide() end end
    if btn then if nm == name then btn:LockHighlight() else btn:UnlockHighlight() end end
  end
end

function Guided.RefreshDungeonChecks()
  for i = 1, table.getn(dungeonChecks) do
    local c = dungeonChecks[i]
    if c and c.code then c:SetChecked(Guided_Save.dungeons[c.code] and true or false) end
  end
end

local function MakeCheck(parent, name, label, y, getter, setter, desc)
  local c = CreateFrame("CheckButton", name, parent, "UICheckButtonTemplate")
  c:SetWidth(26); c:SetHeight(26)
  c:SetPoint("TOPLEFT", parent, "TOPLEFT", 14, y)
  getglobal(name.."Text"):SetText(label)
  c:SetChecked(getter() and true or false)
  c:SetScript("OnClick", function() setter(this:GetChecked() and true or false) end)
  if desc then
    c.tiph = label; c.tipd = desc
    c:SetScript("OnEnter", function()
      GameTooltip:SetOwner(this, "ANCHOR_RIGHT")
      GameTooltip:SetText(this.tiph, 1, 1, 1)
      GameTooltip:AddLine(this.tipd, 0.82, 0.82, 0.82, 1)
      GameTooltip:Show()
    end)
    c:SetScript("OnLeave", function() GameTooltip:Hide() end)
  end
  return c
end

local function CreateOptions()
  if GuidedOptionsFrame then return end
  local f = CreateFrame("Frame", "GuidedOptionsFrame", UIParent)
  f:SetWidth(452); f:SetHeight(464)
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
  title:SetPoint("TOP", f, "TOP", 0, -11); title:SetText("Guided Options")
  local close = CreateFrame("Button", "GuidedOptionsClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() f:Hide() end)

  -- tab bar
  for i = 1, table.getn(OPT_TABS) do
    local nm = OPT_TABS[i]
    local b = CreateFrame("Button", "GuidedOptTab"..nm, f, "UIPanelButtonTemplate")
    b:SetWidth(104); b:SetHeight(22)
    b:SetPoint("TOPLEFT", f, "TOPLEFT", 12 + (i - 1) * 107, -30)
    b:SetText(nm)
    b:SetScript("OnClick", function() Guided.OptTab(nm) end)
  end
  local div = f:CreateTexture(nil, "ARTWORK")
  div:SetPoint("TOPLEFT", f, "TOPLEFT", 10, -56); div:SetPoint("TOPRIGHT", f, "TOPRIGHT", -10, -56)
  div:SetHeight(1); div:SetTexture(1, 1, 1, 0.15)

  local function panel(nm)
    local pn = CreateFrame("Frame", "GuidedOptPanel"..nm, f)
    pn:SetPoint("TOPLEFT", f, "TOPLEFT", 16, -62)
    pn:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -14, 12)
    pn:Hide(); return pn
  end
  local pG, pD, pR, pGu = panel("General"), panel("Display"), panel("Routing"), panel("Guides")

  -- ---------- General ----------
  MakeCheck(pG, "GuidedOptAuto", "Quest auto accept/turn in", -6,
    function() return Guided_Save.auto end,
    function(v) Guided_Save.auto = v
      Print("Auto quest pickup/turn-in "..(v and "|cff66cc66ON|r" or "|cffff5555OFF|r")) end,
    "Automatically accept and hand in the step's quests when you talk to the quest giver.")
  MakeCheck(pG, "GuidedOptMinimap", "Enable minimap button", -34,
    function() return Guided_Save.minimap ~= false end,
    function(v) Guided_Save.minimap = v; Guided.UpdateMinimapButton() end,
    "Add a button on the minimap. Left-click toggles the guide, right-click opens the menu.")
  MakeCheck(pG, "GuidedOptArrow", "Show waypoint arrow", -62,
    function() return Guided_Save.arrow end,
    function(v) Guided_Save.arrow = v end,
    "Show the on-screen arrow pointing to the current step's location.")
  MakeCheck(pG, "GuidedOptLock", "Lock frames", -90,
    function() return Guided_Save.locked end,
    function(v) Guided_Save.locked = v end,
    "Prevent the guide window from being moved or resized.")
  MakeCheck(pG, "GuidedOptTracker", "Enable leveling tracker", -118,
    function() return Guided_Save.tracker end,
    function(v) Guided_Save.tracker = v; Guided.ApplyTracker() end,
    "Show experience per hour, time spent on this level, and estimated time to level.")
  MakeCheck(pG, "GuidedOptFly", "Auto-take flight paths", -146,
    function() return Guided_Save.autofly ~= false end,
    function(v) Guided_Save.autofly = v end,
    "When you open a flight master, automatically fly to the step's destination.")

  -- ---------- Display ----------
  MakeCheck(pD, "GuidedOptHideDone", "Hide completed steps", -6,
    function() return Guided_Save.hidedone end,
    function(v) Guided_Save.hidedone = v; Guided.UpdateUI() end,
    "Remove finished steps from the list instead of greying them out.")
  MakeCheck(pD, "GuidedOptMMPins", "Minimap step pins", -34,
    function() return Guided_Save.minimappins ~= false end,
    function(v) Guided_Save.minimappins = v; if Guided.UpdateMinimapPins then Guided.UpdateMinimapPins() end end,
    "Show numbered pins for nearby upcoming steps on the minimap.")
  local slbl = pD:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  slbl:SetPoint("TOPLEFT", pD, "TOPLEFT", 16, -62); slbl:SetText("Window scale")
  local s = CreateFrame("EditBox", "GuidedOptScale", pD, "InputBoxTemplate")
  s:SetWidth(46); s:SetHeight(20); s:SetPoint("LEFT", slbl, "RIGHT", 14, 0)
  s:SetAutoFocus(false); s:SetMaxLetters(5)
  s:SetText(string.format("%.3g", Guided_Save.scale or 1))
  local shint = pD:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
  shint:SetPoint("LEFT", s, "RIGHT", 10, 0); shint:SetText("0.5 - 2.0  (1.0 = default size)")
  local function ApplyScaleBox()        -- this IS the OnEditFocusLost handler: must NOT call ClearFocus (would re-fire -> stack overflow)
    local v = tonumber(s:GetText())
    if v then
      if v < 0.5 then v = 0.5 elseif v > 2 then v = 2 end
      Guided_Save.scale = v
      Guided.ApplyScale()
    end
    s:SetText(string.format("%.3g", Guided_Save.scale or 1))
  end
  s:SetScript("OnEnterPressed", function() this:ClearFocus() end)   -- ClearFocus -> OnEditFocusLost -> ApplyScaleBox
  s:SetScript("OnEditFocusLost", ApplyScaleBox)
  s:SetScript("OnEscapePressed", function()
    this:SetText(string.format("%.3g", Guided_Save.scale or 1)); this:ClearFocus()
  end)
  local op = CreateFrame("Slider", "GuidedOptOpacity", pD, "OptionsSliderTemplate")
  op:SetWidth(300); op:SetHeight(16); op:SetPoint("TOP", pD, "TOP", 0, -110)
  op:SetMinMaxValues(0, 1); op:SetValueStep(0.05)
  getglobal("GuidedOptOpacityLow"):SetText("0")
  getglobal("GuidedOptOpacityHigh"):SetText("1")
  getglobal("GuidedOptOpacityText"):SetText("Background opacity")
  op:SetValue(Guided_Save.opacity or 0.92)
  op:SetScript("OnValueChanged", function()
    Guided_Save.opacity = this:GetValue()
    if GuidedFrame then GuidedFrame:SetBackdropColor(0.05, 0.05, 0.07, Guided_Save.opacity) end
  end)

  -- ---------- Routing ----------
  MakeCheck(pR, "GuidedOptSkipOver", "Skip overleveled steps", -2,
    function() return Guided_Save.skipoverlevel ~= false end,
    function(v) Guided_Save.skipoverlevel = v; Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI() end,
    "Automatically skip grind/level steps once you're already past their target level.")
  MakeCheck(pR, "GuidedOptHardcore", "Hardcore mode", -28,
    function() return Guided_Save.hardcore end,
    function(v) Guided_Save.hardcore = v; Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI() end,
    "Use the route's hardcore variants (cautious play, no risky steps).")
  MakeCheck(pR, "GuidedOptGroup", "Enable group quests", -54,
    function() return Guided_Save.groupquests end,
    function(v) Guided_Save.groupquests = v; Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI() end,
    "Follow the route's group path for elite/dungeon quests and hide the solo alternatives. Leave off for solo play.")
  local xpr = CreateFrame("Slider", "GuidedOptXpRate", pR, "OptionsSliderTemplate")
  xpr:SetWidth(220); xpr:SetHeight(16); xpr:SetPoint("TOPLEFT", pR, "TOPLEFT", 16, -90)
  xpr:SetMinMaxValues(1, 3); xpr:SetValueStep(0.1)
  getglobal("GuidedOptXpRateLow"):SetText("1x"); getglobal("GuidedOptXpRateHigh"):SetText("3x")
  getglobal("GuidedOptXpRateText"):SetText("Server XP rate")
  xpr:SetValue(Guided_Save.xprate or 1)
  xpr:SetScript("OnValueChanged", function()
    Guided_Save.xprate = this:GetValue(); Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI()
  end)
  local rhdr = pR:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  rhdr:SetPoint("TOPLEFT", pR, "TOPLEFT", 2, -126); rhdr:SetText("|cffffd200Dungeons|r")
  local rhdiv = pR:CreateTexture(nil, "ARTWORK")
  rhdiv:SetPoint("TOPLEFT", rhdr, "BOTTOMLEFT", 0, -3); rhdiv:SetWidth(414); rhdiv:SetHeight(1)
  rhdiv:SetTexture(1, 1, 1, 0.12)
  local rh = pR:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
  rh:SetPoint("TOPLEFT", rhdiv, "BOTTOMLEFT", 0, -4); rh:SetText("Weave selected dungeons into your route.")
  for i = 1, table.getn(DUNGEON_ORDER) do
    local code = DUNGEON_ORDER[i]
    local c = CreateFrame("CheckButton", "GuidedDungeonChk"..i, pR, "UICheckButtonTemplate")
    c:SetWidth(22); c:SetHeight(22)
    local col, row = 0, i - 1
    if i > 8 then col = 1; row = i - 9 end
    c:SetPoint("TOPLEFT", pR, "TOPLEFT", 2 + col * 208, -166 - row * 23)
    getglobal(c:GetName().."Text"):SetText(DUNGEON_NAMES[code] or code)
    c.code = code
    c:SetChecked(Guided_Save.dungeons[code] and true or false)
    c:SetScript("OnClick", function()
      Guided_Save.dungeons[this.code] = this:GetChecked() and true or nil
      Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI()
    end)
    dungeonChecks[i] = c
  end
  local none = CreateFrame("Button", "GuidedDungeonNone", pR, "UIPanelButtonTemplate")
  none:SetWidth(70); none:SetHeight(20); none:SetPoint("BOTTOMLEFT", pR, "BOTTOMLEFT", 2, 6); none:SetText("None")
  none:SetScript("OnClick", function()
    Guided_Save.dungeons = {}; Guided.RefreshDungeonChecks()
    Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI()
  end)
  local allb = CreateFrame("Button", "GuidedDungeonAll", pR, "UIPanelButtonTemplate")
  allb:SetWidth(70); allb:SetHeight(20); allb:SetPoint("LEFT", none, "RIGHT", 8, 0); allb:SetText("All")
  allb:SetScript("OnClick", function()
    for i = 1, table.getn(DUNGEON_ORDER) do Guided_Save.dungeons[DUNGEON_ORDER[i]] = true end
    Guided.RefreshDungeonChecks(); Guided.BuildActive(); Guided.SkipForward(); Guided.UpdateUI()
  end)
  local pnote = pR:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
  pnote:SetPoint("BOTTOMRIGHT", pR, "BOTTOMRIGHT", -2, 10); pnote:SetJustifyH("RIGHT")
  pnote:SetText("Professions: automatic, by skill level")

  -- ---------- Guides (import + actions) ----------
  local gh = pGu:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
  gh:SetPoint("TOPLEFT", pGu, "TOPLEFT", 2, -2); gh:SetWidth(404); gh:SetJustifyH("LEFT")
  gh:SetText("Paste a guide (a RegisterGuide([[...]]) block or raw text), then Import -- loads immediately, no restart.")
  local eb = CreateFrame("EditBox", "GuidedImportEdit", pGu)
  eb:SetMultiLine(true); eb:SetMaxLetters(0); eb:SetAutoFocus(false)
  eb:SetPoint("TOPLEFT", pGu, "TOPLEFT", 2, -36)
  eb:SetPoint("TOPRIGHT", pGu, "TOPRIGHT", -2, -36); eb:SetHeight(150)
  eb:SetFontObject(ChatFontNormal); eb:SetJustifyH("LEFT"); eb:SetTextInsets(5, 5, 5, 5)
  eb:SetBackdrop({
    bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
    tile = true, tileSize = 16, edgeSize = 12,
    insets = { left = 3, right = 3, top = 3, bottom = 3 } })
  eb:SetBackdropColor(0, 0, 0, 0.7)
  eb:SetScript("OnEscapePressed", function() this:ClearFocus() end)
  local impb = CreateFrame("Button", "GuidedImportDo", pGu, "UIPanelButtonTemplate")
  impb:SetWidth(90); impb:SetHeight(22); impb:SetPoint("TOPLEFT", eb, "BOTTOMLEFT", 0, -8); impb:SetText("Import")
  impb:SetScript("OnClick", function()
    local ok, n = pcall(Guided.ImportGuide, eb:GetText())
    if ok and n and n > 0 then Print("Imported "..n.." guide(s)."); eb:SetText(""); Guided.UpdateUI()
    else Print("|cffff5050Import failed|r -- paste a guide or a RegisterGuide([[...]]) block.") end
  end)
  local clrb = CreateFrame("Button", "GuidedImportClear", pGu, "UIPanelButtonTemplate")
  clrb:SetWidth(70); clrb:SetHeight(22); clrb:SetPoint("LEFT", impb, "RIGHT", 8, 0); clrb:SetText("Clear")
  clrb:SetScript("OnClick", function() eb:SetText("") end)
  local detb = CreateFrame("Button", "GuidedOptDetect", pGu, "UIPanelButtonTemplate")
  detb:SetWidth(132); detb:SetHeight(22); detb:SetPoint("BOTTOMLEFT", pGu, "BOTTOMLEFT", 2, 6)
  detb:SetText("Auto-detect guide")
  detb:SetScript("OnClick", function()
    local b = Guided.AutoSelectGuide(); if b then Guided.LoadGuideByName(b) end
  end)
  local rstb = CreateFrame("Button", "GuidedOptReset", pGu, "UIPanelButtonTemplate")
  rstb:SetWidth(120); rstb:SetHeight(22); rstb:SetPoint("BOTTOMRIGHT", pGu, "BOTTOMRIGHT", -2, 6)
  rstb:SetText("Reset progress")
  rstb:SetScript("OnClick", function()
    Guided.seen = {}; Guided.activeStickies = {}
    if Guided_Save.done then Guided_Save.done[Guided_Save.guide] = nil end
    Guided.SetStep(1); Print("Reset to step 1.")
  end)

  f:Hide()
  Guided.OptTab("General")
end

function Guided.ToggleOptions(tab)
  CreateOptions()
  if GuidedOptionsFrame:IsVisible() then
    if tab then Guided.OptTab(tab) else GuidedOptionsFrame:Hide() end
    return
  end
  -- sync widgets to current state before showing
  if GuidedOptAuto then GuidedOptAuto:SetChecked(Guided_Save.auto and true or false) end
  if GuidedOptArrow then GuidedOptArrow:SetChecked(Guided_Save.arrow and true or false) end
  if GuidedOptLock then GuidedOptLock:SetChecked(Guided_Save.locked and true or false) end
  if GuidedOptMinimap then GuidedOptMinimap:SetChecked(Guided_Save.minimap ~= false) end
  if GuidedOptScale then GuidedOptScale:SetText(string.format("%.3g", Guided_Save.scale or 1)) end
  if GuidedOptOpacity then GuidedOptOpacity:SetValue(Guided_Save.opacity or 0.92) end
  if GuidedOptTracker then GuidedOptTracker:SetChecked(Guided_Save.tracker == true) end
  if GuidedOptFly then GuidedOptFly:SetChecked(Guided_Save.autofly ~= false) end
  if GuidedOptHideDone then GuidedOptHideDone:SetChecked(Guided_Save.hidedone == true) end
  if GuidedOptMMPins then GuidedOptMMPins:SetChecked(Guided_Save.minimappins ~= false) end
  if GuidedOptSkipOver then GuidedOptSkipOver:SetChecked(Guided_Save.skipoverlevel ~= false) end
  if GuidedOptHardcore then GuidedOptHardcore:SetChecked(Guided_Save.hardcore == true) end
  if GuidedOptGroup then GuidedOptGroup:SetChecked(Guided_Save.groupquests == true) end
  if GuidedOptXpRate then GuidedOptXpRate:SetValue(Guided_Save.xprate or 1) end
  Guided.RefreshDungeonChecks()
  Guided.OptTab(tab or Guided.optTab or "General")
  GuidedOptionsFrame:Show()
end

-- ----------------------------------------------------------- guide import ----
-- Register pasted guides at runtime (no client restart) via the same path guide
-- files use. Accepts either raw guide text or one/more RXPGuides.RegisterGuide([[
-- ... ]]) blocks. Persists the raw text per character so imports survive /reload.
function Guided.ShowDungeons() Guided.ToggleOptions("Routing") end

function Guided.ImportGuide(text)
  if not text or trim(text) == "" then return 0 end
  local blocks = {}
  for block in string.gfind(text, "%[%[(.-)%]%]") do tinsert(blocks, block) end
  if table.getn(blocks) == 0 then blocks = { text } end   -- raw guide body, no [[ ]]
  Guided_Save.imports = Guided_Save.imports or {}
  local n = 0
  for i = 1, table.getn(blocks) do
    local before = table.getn(Guided.guideOrder)
    local ok = pcall(Guided.RegisterGuide, blocks[i])
    if ok and table.getn(Guided.guideOrder) >= before then
      tinsert(Guided_Save.imports, blocks[i]); n = n + 1
    end
  end
  return n
end

function Guided.ShowImport()
  Guided.ToggleOptions("Guides")
  if GuidedImportEdit then GuidedImportEdit:SetFocus() end
end

function Guided.Show() if GuidedFrame then GuidedFrame:Show(); Guided_Save.shown = true end end
function Guided.Hide() if GuidedFrame then GuidedFrame:Hide(); Guided_Save.shown = false end end
function Guided.Toggle()
  if GuidedFrame and GuidedFrame:IsVisible() then Guided.Hide() else Guided.Show() end
end

-- --------------------------------------------------------------- defaults ----
local function Defaults()
  Guided_Save = Guided_Save or {}
  if RXP12_Save and Guided_Save.step == nil then     -- carry over old settings once
    for k, v in pairs(RXP12_Save) do Guided_Save[k] = v end
  end
  if Guided_Save.step == nil then Guided_Save.step = 1 end
  if Guided_Save.shown == nil then Guided_Save.shown = true end
  if Guided_Save.auto == nil then Guided_Save.auto = false end   -- auto quest pickup/turn-in (opt-in)
  if Guided_Save.arrow == nil then Guided_Save.arrow = true end
  if Guided_Save.locked == nil then Guided_Save.locked = false end
  if Guided_Save.scale == nil then Guided_Save.scale = 1 end
  if not Guided_Save.scaleV2 then Guided_Save.scale = 1; Guided_Save.scaleV2 = true end  -- one-time reset to the 1.0 baseline; BASE_SCALE renders it at the original size
  if not Guided_Save.posV2 then Guided_Save.pos = nil; Guided_Save.posV2 = true end       -- old pos was saved in scaled units; reset once to the new screen-pixel scheme
  if Guided_Save.opacity == nil then Guided_Save.opacity = 0.92 end
  if Guided_Save.dungeons == nil then Guided_Save.dungeons = {} end
  if Guided_Save.done == nil then Guided_Save.done = {} end   -- legacy (unused)
  if Guided_Save.doneQuests == nil then Guided_Save.doneQuests = {} end  -- [questId]=true: observed hand-ins
  if Guided_Save.minimap == nil then Guided_Save.minimap = true end
  if Guided_Save.minimappins == nil then Guided_Save.minimappins = true end
  if Guided_Save.splits == nil then Guided_Save.splits = {} end
  if Guided_Save.tracker == nil then Guided_Save.tracker = false end
  if Guided_Save.autofly == nil then Guided_Save.autofly = true end
  if Guided_Save.hidedone == nil then Guided_Save.hidedone = false end
  if Guided_Save.stepbelow == nil then Guided_Save.stepbelow = false end
  if Guided_Save.skipoverlevel == nil then Guided_Save.skipoverlevel = true end
  if Guided_Save.season == nil then Guided_Save.season = 0 end   -- 0=Era, 1=SoM, 2=SoD
  if Guided_Save.xprate == nil then Guided_Save.xprate = 1 end
  if Guided_Save.hardcore == nil then Guided_Save.hardcore = false end
  if Guided_Save.groupquests == nil then Guided_Save.groupquests = false end
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
function Guided.AutoSelectGuide()
  local lvl = UnitLevel("player") or 1
  local best, bestScore
  for i = 1, table.getn(Guided.guideOrder) do
    local gname = Guided.guideOrder[i]
    local g = Guided.guides[gname]
    -- eligible if it has no #defaultfor, or its #defaultfor matches this character
    if Guided.GuideVisible(g) and (not g.defaultfor or Guided.EvalCondition(g.defaultfor)) then
      local score = GuideScore(g, lvl)
      if not bestScore or score > bestScore then best = gname; bestScore = score end
    end
  end
  return best or Guided.guideOrder[1]
end

local function SelectDefaultGuide()
  if Guided_Save.guide and Guided.guides[Guided_Save.guide] then return end
  local best = Guided.AutoSelectGuide()
  if best then
    Guided_Save.guide = best
    Guided_Save.step = 1
  end
end

-- ---------------------------------------------------------------- events ----
local ev = CreateFrame("Frame", "GuidedEvents")
ev:RegisterEvent("VARIABLES_LOADED")
ev:RegisterEvent("PLAYER_LOGIN")
ev:RegisterEvent("QUEST_LOG_UPDATE")
ev:RegisterEvent("UNIT_QUEST_LOG_CHANGED")
ev:RegisterEvent("PLAYER_LEVEL_UP")
ev:RegisterEvent("PLAYER_XP_UPDATE")
ev:RegisterEvent("SKILL_LINES_CHANGED")
ev:RegisterEvent("QUEST_DETAIL")      -- auto quest interaction (gated on Guided_Save.auto)
ev:RegisterEvent("QUEST_PROGRESS")
ev:RegisterEvent("QUEST_COMPLETE")
ev:RegisterEvent("QUEST_GREETING")
ev:RegisterEvent("GOSSIP_SHOW")
ev:RegisterEvent("WORLD_MAP_UPDATE")   -- reposition the world-map pin as the map opens/pans/zooms
ev:RegisterEvent("TAXIMAP_OPENED")     -- auto flight paths (gated on Guided_Save.auto)

local function OnEvent()
  if event == "WORLD_MAP_UPDATE" then Guided.UpdateWorldMapPins(); return end
  if event == "VARIABLES_LOADED" then
    Defaults()
  elseif event == "PLAYER_LOGIN" then
    Defaults()
    local _, c = UnitClass("player"); PLAYER_CLASS = c
    Guided.me.class = string.lower(c or "")
    Guided.me.race = normalize(UnitRace("player"))
    Guided.me.faction = string.lower(UnitFactionGroup("player") or "")
    if Guided_Save.imports then   -- restore guides imported in earlier sessions
      for i = 1, table.getn(Guided_Save.imports) do pcall(Guided.RegisterGuide, Guided_Save.imports[i]) end
    end
    SelectDefaultGuide()
    Guided.BuildActive()
    CreateUI()
    CreateArrow()
    Guided.StartMinimapPins()
    Guided.UpdateMinimapButton()
    Guided.trk = { t0 = GetTime(), xp = 0, lastXP = UnitXP("player") or 0,
                  lastMax = UnitXPMax("player") or 1, lvlStart = GetTime() }
    Guided.ApplyTracker()
    Guided.ApplyScale()
    if Guided_Save.shown then Guided.Show() else Guided.Hide() end
    Guided.SkipForward()   -- resume at the first not-yet-completed step
    Print("loaded. Guide: |cffffd200"..(Guided_Save.guide or "none")
      .."|r  (/guided list · /guided detect · /guided options)")
  elseif event == "QUEST_LOG_UPDATE" or event == "UNIT_QUEST_LOG_CHANGED"
      or event == "PLAYER_LEVEL_UP" then
    if event == "PLAYER_LEVEL_UP" then
      local t = Guided.trk
      if t then
        local newlv = tonumber(arg1) or UnitLevel("player")
        Guided_Save.splits[newlv - 1] = GetTime() - (t.lvlStart or GetTime())
        t.lvlStart = GetTime(); t.lastXP = UnitXP("player") or 0; t.lastMax = UnitXPMax("player") or 1
      end
      Guided.BuildActive()   -- re-filter maxlevel/level steps
    end
    Guided.CheckAuto()
    Guided.UpdateUI()
  elseif event == "SKILL_LINES_CHANGED" then
    -- re-filter .skill-gated steps when a profession changes (skip mid-combat to
    -- avoid churn from weapon-skill ups)
    if not (UnitAffectingCombat and UnitAffectingCombat("player")) then
      Guided.BuildActive(); Guided.CheckAuto(); Guided.UpdateUI()
    end
  elseif event == "PLAYER_XP_UPDATE" then
    local t = Guided.trk
    if t then
      local cur = UnitXP("player") or 0
      local g = (cur >= t.lastXP) and (cur - t.lastXP) or ((t.lastMax - t.lastXP) + cur)
      if g > 0 then t.xp = t.xp + g end
      t.lastXP = cur; t.lastMax = UnitXPMax("player") or 1
      Guided.UpdateTracker()
    end
    Guided.SkipForward(); Guided.UpdateUI()   -- advance/hide .xp grind gates
  elseif event == "TAXIMAP_OPENED" then
    Guided.HandleTaxi()
  elseif event == "QUEST_DETAIL" or event == "QUEST_PROGRESS"
      or event == "QUEST_COMPLETE" or event == "QUEST_GREETING"
      or event == "GOSSIP_SHOW" then
    if event == "GOSSIP_SHOW" then Guided.HandleTaxiGossip() end
    Guided.HandleQuestEvent(event)
  end
end

ev:SetScript("OnEvent", function()
  local ok, err = pcall(OnEvent)
  if not ok then Print("|cffff4040error:|r "..tostring(err)) end
end)

-- Abandoning a quest is "seen -> gone" just like a turn-in, so the completion
-- tracker would wrongly mark it done. Hook the abandon flow to forget the quest
-- (clear it from seen + doneQuests) and route back to the step that accepts it.
local origAbandonQuest = AbandonQuest
function AbandonQuest()
  local nm = GetAbandonQuestName and GetAbandonQuestName()
  if (not nm or nm == "") and GetQuestLogSelection and GetQuestLogTitle then
    local sel = GetQuestLogSelection()                 -- fall back to the selected quest
    if sel and sel > 0 then nm = GetQuestLogTitle(sel) end
  end
  if nm and nm ~= "" and Guided.active then
    local key = lc(nm)
    Guided.seen[key] = nil                                   -- so the vanish isn't a "hand-in"
    if Guided_Save.doneQuests then
      for id in pairs(Guided_Save.doneQuests) do
        if lc(QuestName(id) or "") == key then Guided_Save.doneQuests[id] = nil end
      end
    end
    -- route back to where this quest is accepted. Two quests can share a name (e.g.
    -- the 456/457 "Balance of Nature" chain), so pick the LATEST accept of that name
    -- BEFORE the current step -- the one you most recently picked up -- and key the
    -- transient guard to that same quest id.
    local origStep = Guided_Save.step or 1
    local bestI, bestId
    for i = 1, origStep - 1 do
      local qs = Guided.active[i].quests
      for k = 1, table.getn(qs or {}) do
        if qs[k].action == "accept" and lc(QuestName(qs[k].id) or "") == key then
          bestI = i; bestId = qs[k].id
        end
      end
    end
    if bestI then Guided_Save.step = bestI; Guided.justAbandonedId = bestId end
  end
  if origAbandonQuest then origAbandonQuest() end   -- QUEST_LOG_UPDATE then re-runs SkipForward with the quest gone
end

-- ----------------------------------------------------------------- slash ----
SLASH_GUIDED1 = "/guided"
SLASH_GUIDED2 = "/gd"
SlashCmdList["GUIDED"] = function(msg)
  msg = trim(string.lower(msg or ""))
  local _, _, cmd, arg = string.find(msg, "^(%a*)%s*(.*)$")
  if cmd == "next" then Guided.Advance()
  elseif cmd == "prev" or cmd == "back" then Guided.Back()
  elseif cmd == "target" then Guided.TargetStep()
  elseif cmd == "use" then Guided.UseStep()
  elseif cmd == "tracker" then Guided.ToggleTracker()
  elseif cmd == "minimap" then
    Guided_Save.minimap = (Guided_Save.minimap == false); Guided.UpdateMinimapButton()
    Print("Minimap button "..(Guided_Save.minimap ~= false and "shown" or "hidden"))
  elseif cmd == "options" or cmd == "config" or cmd == "opt" then Guided.ToggleOptions()
  elseif cmd == "dungeons" then Guided.ShowDungeons()
  elseif cmd == "import" then
    if arg == "clear" then Guided_Save.imports = {}; Print("Cleared imported guides -- /reload to apply.")
    else Guided.ShowImport() end
  elseif cmd == "auto" then
    Guided_Save.auto = not Guided_Save.auto
    if GuidedOptAuto then GuidedOptAuto:SetChecked(Guided_Save.auto and true or false) end
    Print("Auto quest pickup/turn-in "..(Guided_Save.auto and "|cff66cc66ON|r" or "|cffff5555OFF|r"))
  elseif cmd == "debug" then
    Guided.debug = not Guided.debug
    Print("Debug "..(Guided.debug and "|cff66cc66ON|r -- talk to a quest NPC and watch chat" or "|cffff5555OFF|r"))
  elseif cmd == "detect" then
    local best = Guided.AutoSelectGuide()
    if best then
      Guided_Save.guide = best; Guided_Save.step = 1; Guided.seen = {}; Guided.activeStickies = {}
      Guided.BuildActive(); Guided.SkipForward(); Guided.Show()
      Print("Auto-selected for "..(Guided.me.race or "?").." "..(Guided.me.class or "")..": |cffffd200"..best.."|r")
    else
      Print("No guide matched your class/race/level.")
    end
  elseif cmd == "reset" then Guided.seen = {}; Guided.activeStickies = {}; if Guided_Save.done then Guided_Save.done[Guided_Save.guide] = nil end; Guided.SetStep(1); Print("Reset to step 1.")
  elseif cmd == "list" then
    Print("Guides ("..table.getn(Guided.guideOrder).."):")
    for i = 1, table.getn(Guided.guideOrder) do
      DEFAULT_CHAT_FRAME:AddMessage("  "..i..". "..Guided.guideOrder[i])
    end
  elseif cmd == "load" then
    local found
    for i = 1, table.getn(Guided.guideOrder) do
      if string.find(string.lower(Guided.guideOrder[i]), arg, 1, true) then found = Guided.guideOrder[i]; break end
    end
    if found then
      Guided_Save.guide = found; Guided_Save.step = 1; Guided.seen = {}
      Guided.BuildActive()
      Guided.SkipForward(); Guided.Show(); Print("Loaded: "..found.." ("..table.getn(Guided.active).." steps for you)")
    else
      Print("No guide matching '"..arg.."'. /guided list")
    end
  else
    Guided.Toggle()
  end
end
