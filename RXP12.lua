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
  return s
end

-- player identity for "<<" class/race/faction step filtering (set at login)
RXP12.me = { class = "", race = "", faction = "" }

local function normalize(s) return string.gsub(string.lower(s or ""), "%s", "") end
local function mymod(a, b) return a - math.floor(a / b) * b end
local function lc(s) return string.lower(trim(s or "")) end

local function MatchToken(tok)
  local nx = normalize(tok)
  return nx == RXP12.me.class or nx == RXP12.me.race or nx == RXP12.me.faction
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

-- build the list of steps that apply to this character (after << filtering)
function RXP12.BuildActive()
  RXP12.active = {}
  RXP12.labelIndex = {}      -- step #label -> index in active (for #completewith <label>)
  RXP12.activeStickies = {}  -- index -> true: sticky steps pinned & not yet done
  local g = RXP12.CurrentGuide()
  if not g then return end
  for i = 1, table.getn(g.steps) do
    if RXP12.EvalCondition(g.steps[i].cond) then
      tinsert(RXP12.active, g.steps[i])
      local s = RXP12.active[table.getn(RXP12.active)]
      if s.label and s.label ~= true then RXP12.labelIndex[s.label] = table.getn(RXP12.active) end
    end
  end
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
-- parse one in-step line into the step table
function RXP12.ParseLine(step, t)
  local pre, disp
  local s, e = string.find(t, ">>", 1, true)
  if s then
    pre = trim(string.sub(t, 1, s - 1))
    disp = trim(string.sub(t, e + 1))
  else
    pre = t
  end
  if disp and disp ~= "" then tinsert(step.text, Sanitize(disp)) end
  if pre == "" then return end

  local first = string.sub(pre, 1, 1)
  if first == "." then
    local _, _, cmd, rest = string.find(pre, "^%.(%S+)%s*(.*)")
    if cmd == "goto" then
      tinsert(step.gotos, rest)
    elseif cmd == "accept" or cmd == "complete" or cmd == "turnin" then
      -- RXP form: ".accept <id>", ".turnin <id>", ".complete <id>,<objective>"
      local _, _, id, obj = string.find(rest, "(%d+),?(%d*)")
      tinsert(step.quests, { action = cmd, id = tonumber(id), obj = tonumber(obj) })
    end
    -- other dot-commands ignored in the MVP
  elseif first == "#" then
    local _, _, key, val = string.find(pre, "^#(%S+)%s*(.*)")
    if key == "level" then
      step.level = tonumber(val)
    elseif key then
      step[key] = (val ~= "" and val) or true
    end
  elseif first == "+" then
    tinsert(step.text, Sanitize(string.sub(pre, 2)))
  end
end

-- parse a full RXP-format guide string into { name, steps = { ... } }
function RXP12.Parse(text)
  local guide = { name = "Unnamed", steps = {} }
  local step = nil
  for line in string.gfind(text, "[^\r\n]+") do
    local t = trim(line)
    if t ~= "" then
      if string.find(t, "^step") then
        step = { text = {}, gotos = {}, quests = {}, level = nil, cond = nil }
        local _, _, cond = string.find(t, "^step%s*<<%s*(.*)")
        if cond and cond ~= "" then step.cond = cond end
        tinsert(guide.steps, step)
      elseif not step then
        -- header directives (before the first step)
        local _, _, key, val = string.find(t, "^#(%S+)%s*(.*)")
        if key == "name" then
          guide.name = trim(val)
          -- a leading "N-M" level range in the name drives auto-detection
          local _, _, lo, hi = string.find(guide.name, "(%d+)%s*%-%s*(%d+)")
          if lo then guide.lo = tonumber(lo); guide.hi = tonumber(hi) end
        elseif key == "defaultfor" then guide.defaultfor = trim(val)   -- race/class this guide starts
        elseif key == "group" then guide.group = trim(val)
        elseif key == "next" then guide.nextguide = trim(val)          -- chains to the next guide
        end
      else
        RXP12.ParseLine(step, t)
      end
    end
  end
  return guide
end

function RXP12.RegisterGuide(text)
  if type(text) ~= "string" then return end
  local ok, guide = pcall(RXP12.Parse, text)
  if not ok or not guide then return end
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
  if GetCVar and GetCVar("rotateMinimap") == "1" and MiniMapCompassRing then
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
  for k = 1, table.getn(step.quests) do
    local q = step.quests[k]
    local nm = QuestName(q.id)
    if not nm then return false end                          -- id not in DB -> can't auto-track
    local key = lc(nm)
    local entry = log[key]
    if q.action == "accept" then
      if not entry then return false end                     -- quest not in log yet
    elseif q.action == "complete" then
      if not entry then return false                         -- not even accepted
      elseif q.obj then
        if not ObjectiveDone(entry.idx, q.obj) then return false end -- objective not done
      elseif not entry.complete then return false end         -- whole quest not complete
    elseif q.action == "turnin" then
      if not (RXP12.seen[key] and not entry) then return false end -- seen, now gone = turned in
    end
  end
  return true
end

-- is the step at active index `i` done? resolves "#completewith next" (done when
-- the following step is done) and "#completewith <label>" (done when the labelled
-- step is done) by delegating; depth-guarded against cycles. Falls back to the
-- step's own completion otherwise.
function RXP12.StepDoneByIndex(i, log, depth)
  depth = (depth or 0) + 1
  if depth > 30 then return false end
  local s = RXP12.active and RXP12.active[i]
  if not s then return false end
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
      if not RXP12.StepDoneByIndex(i, log) then RXP12.activeStickies[i] = true end
      RXP12_Save.step = i + 1
    elseif RXP12.StepDoneByIndex(i, log) then
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
        local nm = QuestName(q.id)
        if nm then
          if q.action == "accept" then accept[lc(nm)] = true
          elseif q.action == "turnin" then turnin[lc(nm)] = true end
        end
      end
    end
  end
  return accept, turnin
end

-- read a vanilla gossip quest list (active or available) as a plain title array.
-- The return stride differs by client (1.12 vs Era), so derive it from the data:
-- total returns / count; the quest title is always the first field of each group.
local function GossipTitles(getter, num)
  local out = {}
  if not getter or not num or num == 0 then return out end
  local all = { getter() }
  local total = table.getn(all)
  if total == 0 then return out end
  local stride = math.floor(total / num)
  if stride < 1 then stride = 1 end
  for i = 1, num do out[i] = all[(i - 1) * stride + 1] end
  return out
end

-- handle a quest/gossip frame event when auto mode is on. pcall'd by caller.
function RXP12.HandleQuestEvent(e)
  if not RXP12_Save or not RXP12_Save.auto then return end
  local accept, turnin = RXP12.WantedQuests()

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
    local titles = GossipTitles(GetGossipActiveQuests, GetNumGossipActiveQuests())
    for i = 1, table.getn(titles) do
      if turnin[lc(titles[i])] then SelectGossipActiveQuest(i); return end
    end
    titles = GossipTitles(GetGossipAvailableQuests, GetNumGossipAvailableQuests())
    for i = 1, table.getn(titles) do
      if accept[lc(titles[i])] then SelectGossipAvailableQuest(i); return end
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
    if q.action == "complete" or q.action == "accept" then
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
-- RXP shows a scrolling LIST of steps with the current one highlighted, not a
-- single-step panel. We mirror that: one pooled row per active step in a
-- ScrollFrame -- current step highlighted, done steps dimmed, pinned stickies
-- marked, click a row to jump to it, and the list auto-scrolls to the active step.
RXP12.rows = RXP12.rows or {}
RXP12.rowY = RXP12.rowY or {}
local ROW_WIDTH = 310

-- measure a wrapped FontString's height. 1.12 FontStrings have NO GetStringHeight
-- (added in a later client) -- use GetHeight (auto-fits a width-constrained,
-- single-anchored FontString); fall back to a line-count estimate if it's 0.
local function FSHeight(fs)
  if fs.GetStringHeight then
    local h = fs:GetStringHeight()
    if h and h > 0 then return h end
  end
  local h = fs:GetHeight()
  if h and h > 0 then return h end
  local _, breaks = string.gsub(fs:GetText() or "", "\n", "")
  return (breaks + 1) * 12
end

-- assemble a step's display text. Only the current step pays for a quest-log
-- scan (objective progress); other rows stay cheap to render.
local function StepBodyText(step, isCurrent)
  local lines = {}
  for k = 1, table.getn(step.text) do tinsert(lines, step.text[k]) end
  if isCurrent then
    local ok, objl = pcall(ObjectiveLines, step)
    if ok and objl then for k = 1, table.getn(objl) do tinsert(lines, objl[k]) end end
  end
  for k = 1, table.getn(step.gotos) do
    tinsert(lines, "|cffffd200> "..step.gotos[k].."|r")
  end
  if step.level then tinsert(lines, "|cff88ccff> Reach level "..step.level.."|r") end
  local body = table.concat(lines, "\n")
  if body == "" then body = "|cff888888(no description)|r" end
  return body
end

local function GetRow(i)
  if RXP12.rows[i] then return RXP12.rows[i] end
  local r = CreateFrame("Button", "RXP12Row"..i, RXP12ScrollChild)
  r:SetWidth(ROW_WIDTH)
  r.bg = r:CreateTexture(nil, "BACKGROUND")
  r.bg:SetAllPoints()
  r.bg:SetTexture(0.20, 0.45, 0.85, 0.30)   -- current-step highlight
  r.bg:Hide()
  r:SetHighlightTexture("Interface\\Buttons\\WHITE8X8")
  local hl = r:GetHighlightTexture(); if hl then hl:SetVertexColor(1, 1, 1, 0.12) end
  r.fs = r:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  r.fs:SetPoint("TOPLEFT", r, "TOPLEFT", 6, -3)
  r.fs:SetWidth(ROW_WIDTH - 12)
  r.fs:SetJustifyH("LEFT"); r.fs:SetJustifyV("TOP")
  r:SetScript("OnClick", function() if this.stepIndex then RXP12.SetStep(this.stepIndex) end end)
  RXP12.rows[i] = r
  return r
end

function RXP12.ScrollToStep(cur)
  if not RXP12ScrollFrame then return end
  local maxScroll = RXP12ScrollChild:GetHeight() - RXP12ScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local target = (RXP12.rowY[cur] or 0) - 24      -- keep a little context above
  if target < 0 then target = 0 end
  if target > maxScroll then target = maxScroll end
  RXP12ScrollFrame:SetVerticalScroll(target)
end

function RXP12.WheelScroll(dir)
  if not RXP12ScrollFrame then return end
  local maxScroll = RXP12ScrollChild:GetHeight() - RXP12ScrollFrame:GetHeight()
  if maxScroll < 0 then maxScroll = 0 end
  local v = RXP12ScrollFrame:GetVerticalScroll() - (dir or 0) * 32
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
    local r = GetRow(1); r.stepIndex = nil; r.bg:Hide(); r.fs:SetAlpha(1)
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

  RXP12.rowY = {}
  local y = 0
  for i = 1, n do
    local step = RXP12.active[i]
    local r = GetRow(i)
    r.stepIndex = i

    local marker
    local active = RXP12.activeStickies and RXP12.activeStickies[i]
    if i == cur then marker = "|cff33ff33> |r"; r.bg:Show()
    elseif active then marker = "|cffffcc00* |r"; r.bg:Hide()
    else marker = "|cffaaaaaa- |r"; r.bg:Hide() end

    r.fs:SetText(marker .. StepBodyText(step, i == cur))
    if i < cur and not active then r.fs:SetAlpha(0.45) else r.fs:SetAlpha(1) end

    local h = FSHeight(r.fs) + 6
    if h < 16 then h = 16 end
    r:SetHeight(h); r:SetWidth(ROW_WIDTH)
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

local function CreateUI()
  if RXP12Frame then return end
  local f = CreateFrame("Frame", "RXP12Frame", UIParent)
  f:SetWidth(340); f:SetHeight(320)
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
  f:SetBackdropColor(0, 0, 0, 0.85)
  f:SetMovable(true); f:EnableMouse(true); f:RegisterForDrag("LeftButton")
  f:SetScript("OnDragStart", function() if not RXP12_Save.locked then this:StartMoving() end end)
  f:SetScript("OnDragStop", function()
    this:StopMovingOrSizing()
    RXP12_Save.pos = { x = this:GetLeft(), y = this:GetTop() }
  end)

  local title = f:CreateFontString("RXP12FrameTitle", "OVERLAY", "GameFontNormal")
  title:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -10)
  title:SetText("RXP12")

  local counter = f:CreateFontString("RXP12FrameCounter", "OVERLAY", "GameFontHighlightSmall")
  counter:SetPoint("TOPRIGHT", f, "TOPRIGHT", -28, -12)

  -- scrolling step list
  local sf = CreateFrame("ScrollFrame", "RXP12ScrollFrame", f)
  sf:SetPoint("TOPLEFT", f, "TOPLEFT", 12, -30)
  sf:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -14, 34)
  local child = CreateFrame("Frame", "RXP12ScrollChild", sf)
  child:SetWidth(ROW_WIDTH); child:SetHeight(1)
  sf:SetScrollChild(child)
  sf:EnableMouseWheel(true)
  sf:SetScript("OnMouseWheel", function() RXP12.WheelScroll(arg1) end)

  local prev = CreateFrame("Button", "RXP12FramePrev", f, "UIPanelButtonTemplate")
  prev:SetWidth(70); prev:SetHeight(20)
  prev:SetPoint("BOTTOMLEFT", f, "BOTTOMLEFT", 10, 8)
  prev:SetText("< Prev")
  prev:SetScript("OnClick", function() RXP12.Back() end)

  local next = CreateFrame("Button", "RXP12FrameNext", f, "UIPanelButtonTemplate")
  next:SetWidth(70); next:SetHeight(20)
  next:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT", -10, 8)
  next:SetText("Next >")
  next:SetScript("OnClick", function() RXP12.Advance() end)

  local opt = CreateFrame("Button", "RXP12FrameOpt", f, "UIPanelButtonTemplate")
  opt:SetWidth(70); opt:SetHeight(20)
  opt:SetPoint("BOTTOM", f, "BOTTOM", 0, 8)
  opt:SetText("Options")
  opt:SetScript("OnClick", function() RXP12.ToggleOptions() end)

  local close = CreateFrame("Button", "RXP12FrameClose", f, "UIPanelCloseButton")
  close:SetPoint("TOPRIGHT", f, "TOPRIGHT", 2, 2)
  close:SetScript("OnClick", function() RXP12.Hide() end)

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
  f:SetWidth(290); f:SetHeight(248)
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
    RXP12OptionsFrame:Show()
  end
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
    if g and (not g.defaultfor or RXP12.EvalCondition(g.defaultfor)) then
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
  elseif cmd == "auto" then
    RXP12_Save.auto = not RXP12_Save.auto
    if RXP12OptAuto then RXP12OptAuto:SetChecked(RXP12_Save.auto and true or false) end
    Print("Auto quest pickup/turn-in "..(RXP12_Save.auto and "|cff66cc66ON|r" or "|cffff5555OFF|r"))
  elseif cmd == "detect" then
    local best = RXP12.AutoSelectGuide()
    if best then
      RXP12_Save.guide = best; RXP12_Save.step = 1; RXP12.seen = {}; RXP12.activeStickies = {}
      RXP12.BuildActive(); RXP12.SkipForward(); RXP12.Show()
      Print("Auto-selected for "..(RXP12.me.race or "?").." "..(RXP12.me.class or "")..": |cffffd200"..best.."|r")
    else
      Print("No guide matched your class/race/level.")
    end
  elseif cmd == "reset" then RXP12.seen = {}; RXP12.activeStickies = {}; RXP12.SetStep(1); Print("Reset to step 1.")
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
