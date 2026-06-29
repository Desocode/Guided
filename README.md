# RXP12

A lean, **self-contained** step-by-step leveling-guide engine for the **World of Warcraft 1.12
(vanilla) client** — built for Turtle WoW. It reads RXPGuides-format guide data and drives it with
a movable guide window, an on-screen direction arrow, live quest tracking, and optional auto
quest pickup/turn-in.

RXPGuides itself cannot run on 1.12 (it needs Ace3 / Lua 5.1+ and modern-Classic APIs), so RXP12 is
**not a port** — it's a small native engine (Lua 5.0 / vanilla FrameXML) that consumes the route data.

## Features

- Parses the RXP guide DSL (`step`, `.goto`, `.accept`/`.complete`/`.turnin`, `>>text`, `#level`, …)
- Per-character **class / race / faction** step filtering (`step << …`)
- **Auto-advance & resume**: skips steps you've already completed; jumps to where you actually are
- `#sticky` and `#completewith` step semantics (pinned "do-this-along-the-way" steps)
- On-screen **direction arrow** (bundled sprite sheet + native minimap-facing; no SuperWoW needed)
- Live **objective progress** in the panel (e.g. `- Boar Hide: 3/8`)
- Optional **auto-accept / auto-turn-in / auto-gossip** (opt-in, default off; leaves reward *choices* to you)
- Options UI (auto toggle, arrow toggle, window lock, scale, reset) + slash commands

## Install

Copy the `RXP12` folder into `Interface\AddOns\`, then fully **restart** the client (new addon
folders don't appear on `/reload`). No other addons required.

## Usage

- `/rxp12` — toggle the window
- `/rxp12 list` / `/rxp12 load <name>` — pick a guide
- `/rxp12 options` — settings · `/rxp12 auto` — toggle quest automation
- `/rxp12 next` / `prev` / `reset`

## Status

MVP, in active development. Validated offline; in-game testing ongoing.

## Credits / third-party content

RXP12 is a personal project and stands on the shoulders of others:

- **pfQuest** (Shagu) — `img/arrow.tga` is pfQuest's arrow sprite sheet, and `Data/QuestNames.lua`
  is a quest-id → title table extracted from pfQuest's enUS database. The native minimap player-facing
  technique is also adapted from pfQuest's `compat/client.lua`.
- **RXPGuides** — the guide files under `Guides/` use the RXPGuides guide format and route data.

All third-party content remains under its original authors' licenses. This repository is intended for
personal/educational use; please respect the upstream projects' licensing if redistributing.
