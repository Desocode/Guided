# Changelog

All notable changes to **Guided**, newest first. In-game, `/guided changelog`
shows the most recent entries.

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
