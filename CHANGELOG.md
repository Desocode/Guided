# Changelog

All notable changes to **Guided**, newest first. In-game, `/guided changelog`
shows the most recent entries.

## 1.48
- Multi-quest NPCs (accept/turn in several quests at one NPC) now flow automatically with auto
  on. After each accept/turn-in we close the quest frame (`HideUIPanel`), which makes the NPC
  re-show its gossip/greeting so the next quest is picked up — the same mechanism RXP uses. You
  no longer have to re-click the NPC between quests.

## 1.47
- `#completewith` side-steps now clear when their **own** objective completes, not only when
  the step they're tied to is reached. A "kill Moonstalker Runts for 6 Fangs" side-step
  (`#completewith AsterionTravel`) stayed pinned at 6/6 because completion was decided *solely*
  by whether AsterionTravel was done. It now completes when either its own objective is done or
  the target is reached — matching RXP.

## 1.46
- A `.complete <quest>,<objective>` step now clears when the **whole quest** reads complete,
  not just when the per-objective progress read says so. If you'd finished an (optional) quest —
  all items collected, quest ready to hand in — but the specific objective read was flaky, the
  step could linger. It now completes as soon as the quest itself is complete.

## 1.45
- **Cross-zone direction arrow.** When a step's target is in another zone (e.g. "Talk to Landria"
  in Darnassus while you're in Darkshore), the arrow now points *toward* it using bundled
  vanilla world-coordinate data (Astrolabe, from Questie — LGPL). Zones whose map-file name
  doesn't cleanly match still fall back to the "> Zone" hint, and different-continent targets
  keep the hint (you can't point across the ocean). Purely additive — no in-zone change.

## 1.44
- A `.collect` step with no author comment now names the item ("Collect [Heavy Recurve Bow]")
  instead of the generic "Collect the listed items". The item name is resolved from its ID via
  `GetItemInfo` once the client has it cached (seen it in loot/vendor/AH); until then it falls
  back to the generic text.

## 1.43
- `.collect` gather side-steps now auto-complete once you hold enough of the item. They were
  parsed as untracked notes, so a "collect 5 Strider Meat" side-step lingered its whole window
  even when you already had the meat — and each section's copy churned in and out. We now count
  the item with `GetItemCount` and complete the step at the target count (collect-only steps;
  ones that also carry a quest objective still wait on it).

## 1.42
- Map pin hover tooltip now lists each step once. A step with several `.goto` waypoints (e.g.
  "Kill Reef Crawlers", which marks a 9-point kill area) added one point per waypoint, so a pin
  that clustered several of them repeated the same step line. The tooltip now de-duplicates by
  step. (Minimap pins have no tooltip.)

## 1.41
- Map pin hover text now shows a step's real instruction instead of the faint "(optional)"
  marker. `#optional` adds a marker element, and the pin summary was picking it (it comes
  first) — so side-step pins read "(optional)" instead of e.g. "Return to Auberdine". The
  summary now skips the marker. (RXP treats optional as a step flag, not an element, so its
  pins always showed the real text.)

## 1.40
- World-map and minimap pins now skip content-less steps too. The auto-skip test from 1.39 is
  shared with the pin logic, so a step whose content is entirely filtered out for your character
  no longer drops a stray waypoint on the map or minimap.

## 1.39
- Steps with no visible content for your character now auto-advance instead of showing as a
  bare checkbox. If every line of a step is filtered out by its `<<` condition (leaving only the
  faint "(optional)" marker) — or the step has no content at all — there's nothing to do, so the
  guide skips it, matching RXP (an element-less step is treated as already complete). Steps that
  still have a real instruction or an applicable quest objective are unaffected.

## 1.38
- Fixed side-steps piling up (many showing at once). A `#completewith` side-step closes when
  the guide passes its target step, but our target lookup only covered *active* steps — so any
  side-step whose target was filtered out for your character (SoD steps, other class/race) or was
  a dangling label never closed and pinned forever, accumulating as you progressed. Targets are
  now resolved against the full step list (filtered targets map to the next active step), matching
  RXP; note-only side-steps with a truly missing target no longer pin at all.

## 1.37
- Sticky/side-steps now respect their **quest-state gates** (`.isQuestAvailable`, `.isOnQuest`,
  `.isQuestComplete`, …). Previously the pin path skipped `StepGateMet`, so a gated side-step
  showed unconditionally — e.g. the "Abandon Bashal'Aran" side-step (`.isQuestAvailable 955`)
  pinned even when its condition wasn't met. (More noticeable after 1.36 made `#completewith`
  steps sticky.)

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
