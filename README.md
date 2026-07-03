# Guided

A lean, **self-contained** step-by-step leveling-guide engine for the **World of Warcraft 1.12
(vanilla) client**. It reads step-based route data and drives it with a two-window guide display,
an on-screen direction arrow, world-map & minimap pins, live quest tracking, and optional quest
automation.

It's a small native engine (Lua 5.0 / vanilla FrameXML) — no heavy libraries, no runtime
dependencies.

## Features

**Guide engine**
- Step-based guide format (`step`, `.goto`, `.accept`/`.complete`/`.turnin`, `.target`/`.mob`,
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
- Run modes — Hardcore, server XP rate; season locked to Era
- Dungeon weaving (pick which dungeons to include) and skip-overleveled steps

**Navigation & display**
- On-screen **direction arrow** (bundled sprite sheet + native minimap-facing)
- Numbered **world-map & minimap pins** — clustered, with hover details, capped look-ahead
- Live **objective counts** inline; a **timer bar** for timed steps and real game quest timers
- Movable/scalable window, opacity, hide-completed toggle

**Automation & extras (opt-in)**
- Auto accept / turn-in / gossip (default off; leaves reward *choices* to you)
- Flight-path automation; minimap button; leveling tracker (XP/hr, time-to-level)
- Tabbed options window; runtime guide import

## Install

1. Open the [**Releases**](https://github.com/Desocode/Guided/releases/latest) page and, under
   **Assets**, download **`Guided.zip`**.
   ⚠️ **Don't** use the green *Code → Download ZIP* button or the *Source code (zip)* link — those
   give you a mis-named `Guided-main` folder that WoW won't load.
2. Extract it into `…\World of Warcraft\Interface\AddOns\`. You should end up with
   `…\Interface\AddOns\Guided\Guided.toc` (folder named exactly `Guided`).
3. **Restart** the client — new addon folders don't appear on `/reload` — and at the character
   screen enable **Load out of date AddOns**.

No other addons required.

## Usage

- `/guided` (or `/gd`) — toggle the window · `/guided help` — list all commands
- `/guided list` · `/guided load <name>` · `/guided detect` — browse / pick a guide
- `/guided options` — settings (display, routing, dungeons, import) · `/guided auto` — quest automation
- `/guided next` · `prev` · `reset` — step navigation · `target` / `use` — macro-able actions
- `/guided tracker` · `minimap` · `import [clear]` · `changelog`
- `/guided why` — diagnose why the current step isn't auto-completing (per-objective status)
- Right-click the minimap button (or the window cog) for the menu
