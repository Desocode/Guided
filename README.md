# Guided

A lean, **self-contained** step-by-step leveling-guide engine for the **World of Warcraft 1.12
(vanilla) client**. It reads RXPGuides-format route data and drives it with a two-window guide
display, an on-screen direction arrow, world-map & minimap pins, live quest tracking, and optional
quest automation.

RXPGuides itself can't run on 1.12 (it needs Ace3 / Lua 5.1+ and modern-Classic map APIs), so Guided
is **not a port** — it's a small native engine (Lua 5.0 / vanilla FrameXML) that consumes the route
data. No Ace, no pfQuest dependency at runtime.

## Features

**Guide engine**
- Parses the RXP guide DSL (`step`, `.goto`, `.accept`/`.complete`/`.turnin`, `.target`/`.mob`,
  `.use`, `.fly`, `.vendor`, `.train`, `>>text`, `#level`, …)
- Two-window UI: the current step (with per-objective rows + progress bar) above a scrolling step list
- **Auto-advance & resume** — skips steps already done; picks up where you actually are
- **Sticky side-steps** (`#sticky` / `#completewith`) — "do this along the way" pins
- **Guide chaining** (`#next`) — finishing a guide rolls into the next one
- Per-character progress, saved across sessions; a starting guide is auto-picked only for brand-new characters

**Step gating**
- Class / race / faction and level filters (`step << …`)
- Professions (`.skill`), group vs solo (`.group` / `.solo`)
- Quest-state gates (`.isOnQuest` / `.isQuestTurnedIn` / `.isQuestComplete` / …)
- Run modes — Hardcore, server XP rate; season locked to Era (SoM/SoD content hidden)
- Dungeon weaving (pick which dungeons to include) and skip-overleveled steps

**Navigation & display**
- On-screen **direction arrow** (bundled sprite sheet + native minimap-facing; no SuperWoW)
- Numbered **world-map & minimap pins** — clustered, with hover details, capped look-ahead
- Live **objective counts** inline; a **timer bar** for `.timer` steps and real game quest timers
- Movable/scalable window, opacity, hide-completed toggle

**Automation & extras (opt-in)**
- Auto accept / turn-in / gossip (default off; leaves reward *choices* to you)
- Flight-path automation; minimap button; leveling tracker (XP/hr, time-to-level)
- Tabbed options window; runtime guide import

## Install

Extract the `Guided` folder into `…\World of Warcraft\Interface\AddOns\`, then **restart** the client
(new addon folders don't appear on `/reload`). At the character screen, enable **Load out of date
AddOns**. No other addons required.

## Usage

- `/guided` (or `/gd`) — toggle the window
- `/guided list` · `/guided load <name>` — browse / pick a guide
- `/guided detect` — auto-pick a guide for your class/level
- `/guided options` — settings · `/guided auto` — toggle quest automation
- `/guided next` · `prev` · `reset` · `import` · `dungeons` · `tracker` · `minimap`
- Right-click the minimap button (or the window cog) for the menu

## Credits / third-party content

Guided is a personal project and builds on others' work:

- **pfQuest** (Shagu) — `img/arrow.tga` is pfQuest's arrow sprite sheet; `Data/QuestNames.lua` and
  `Data/ZoneNames.lua` are derived from pfQuest's database; the native minimap player-facing technique
  is adapted from pfQuest's `compat/client.lua`.
- **RestedXP / RXPGuides** — the files under `Guides/` use the RXPGuides guide format and route data.

All third-party content remains under its original authors' licenses. The bundled RestedXP guide data
is commercial content included for personal use — **do not redistribute it**; respect the upstream
projects' licensing.
