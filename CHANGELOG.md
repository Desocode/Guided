# Changelog

All notable changes to **Guided**, newest first. In-game, `/guided changelog`
shows the most recent entries.

## 1.36
- `#completewith` steps are now treated as **pinned side-steps** (sticky), matching RXP.
  Only an explicit `#sticky` was being made sticky, so the ~390 `#completewith` side-steps
  were shown as **main** steps — e.g. "Kill Moonkin for their Small Eggs" (`#completewith
  RedCrystal`) appeared as a main step and, because its completion is tied to a later step,
  blocked the flow. They now pin alongside the current step and clear when their window passes.

## 1.35
- Fixed same-name quest chains skipping ahead. Several quests can share one title (the
  Bashal'Aran chain, 954–957, are all "Bashal'Aran"); the turn-in check was name-based, so
  the moment that name left your log — between parts, or on abandon — every same-named
  turn-in step looked handed in and the whole chain got skipped. Turn-ins are now tracked by
  quest **id**, so each part completes only when you actually hand it in.
- Handled guide-instructed `.abandon` steps. `.abandon` is now parsed, and abandoning the
  quest the guide tells you to no longer routes you *backward* to re-accept it (the
  accidental-abandon recovery still works for quests you drop by mistake).

## 1.34
- Added `/guided why` — prints a per-objective status for the current step (accepted /
  handed in / complete / not in the name DB / gated) so you can see exactly what's stopping
  it from auto-advancing. Useful for "hand in then pick up at the same NPC" steps that stall.

## 1.33
- **Reverted 1.32.** Auto-skipping optional steps was wrong: on relog it flowed past
  optional content you were still working on — e.g. an active-quest objective like the
  Thresher Eyes collection in Darkshore — jumping the guide ahead. RXP's `#optional` only
  *hides* a step from the upcoming list; it does not auto-skip it. Optional steps once again
  stay in the flow (shown, and tickable to skip) exactly as before.

## 1.32 (reverted in 1.33)
- ~~`#optional` steps no longer block auto-advance.~~ Over-aggressive; see 1.33.

## 1.31
- `.fly` (flight-path) steps now complete on **arrival at the destination**. Previously a
  flight step had no trackable objective, so a guide ending in one (e.g. Teldrassil's "Fly to
  Darkshore") never counted as finished and never auto-chained to the next zone's guide. This
  fixes flight-based `#next` transitions across all guides.

## 1.30
- Support `#displayname` (per-class/race guide names). Guides now show their intended
  name for your character — e.g. the Darkshore segment displays as **"11-16 Darkshore"**
  for a Night Elf instead of the raw "14-16 Darkshore". `/guided load` matches either name.

## 1.29
- Added this changelog (`CHANGELOG.md`) and an in-game `/guided changelog` command.

## 1.28
- `.home` / `.sethearth` and `.hs` / `.hearth` steps now **auto-advance**: setting your
  hearthstone completes a "set hearth" step; hearthing home completes a "hearth to X" step.

## 1.27
- Fixed auto-advance on multi-action steps that turn in one quest and accept another of the
  **same name** (e.g. the Coldridge Valley Mail Delivery chain at Talin Keeneye). The hand-in
  is now captured by quest id at turn-in, so a re-accepted same-named quest no longer makes the
  step look incomplete.

## 1.26
- Minimap pins cluster together when they would overlap.

## 1.25
- Polish: sticky side-step pins are unnumbered; `#optional` steps are marked; Blizzard's quest
  timer is hidden behind our own timer bar; the shared dropdown scale is restored on close.

## 1.24
- Conditional step gating: `.zone`, `.zoneskip` / `.subzoneskip`, `.itemcount`, `.itemStat`,
  `.money`, plus `#requires` prerequisites and `#loop` guides.

## 1.23
- A starting guide is auto-picked only for brand-new characters (it won't override one you've
  already chosen).

## 1.20 – 1.22
- World-map pins toggle; tidier options layout; back-navigation fixes; chain into the next guide
  via `#next`; show real in-game quest timers; re-pin relevant stickies on navigation.

## 1.07 – 1.19
- Minimap button polish and icon iterations; fixed `<<` condition evaluation for mixed
  negation / OR groups; back-nav clears future manual ticks; dropdown menu refinements.

## 1.00 – 1.06
- Minimap step pins; robust quest-abandon handling and re-routing (including same-named chains).

## 0.89 – 0.99
- `.timer` countdown bar; numbered, clustered world-map pins with a capped look-ahead;
  quest-state gating (`.isOnQuest` / `.isQuestComplete` / …); group/solo support
  (`.group` / `.solo`); quest-abandon cleanup.

## 0.50 – 0.88
- Two-window layout (current step above a scrolling list); per-objective rows with live
  kill/collect counts; flight-path automation (`.fly`); `.xp` level gates; profession gating
  (`.skill`); dungeon weaving; run modes (XP rate / Hardcore); tabbed options window.

## 0.11 – 0.49
- Initial engine: guide parsing, auto-detected starting guide, full 1–60 guides, numeric
  `.goto` world-map support, persisted step completion, quest-item Use/Target buttons, minimap
  button, leveling tracker, and runtime guide import.
