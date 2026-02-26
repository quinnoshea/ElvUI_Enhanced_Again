[![Package and release](https://github.com/quinnoshea/ElvUI_Enhanced_Again/actions/workflows/main.yml/badge.svg)](https://github.com/quinnoshea/ElvUI_Enhanced_Again/actions/workflows/main.yml)

# ElvUI Enhanced (Yet) Again

A lightweight plugin for [ElvUI](http://www.tukui.org) that adds essential quality-of-life features without duplicating what ElvUI already does well.

**Requires ElvUI version 12 or higher.**

**Current Version:** 4.3.1
**Supported WoW Versions:** Retail (The War Within / Midnight), Wrath Classic

## Installation

Install via [CurseForge](https://www.curseforge.com/wow/addons/elvui-enhanced-again) or [Wago](https://addons.wago.io/addons/elvui-enhanced-again), or clone this repository into your `Interface/AddOns` directory.

## Features

### Minimap
- **Location Panel** — Zone name and coordinates displayed above the minimap.
- **Minimap Button Bar** — Collects and skins addon minimap buttons into a movable bar with mouseover fade support.

### Raiding
- **Raid Marker Bar** — Quick-access bar for placing target icons and world markers with modifier-key support.

### Equipment Manager
- **Spec-Based Gear Swap** — Automatically equips a configured equipment set when switching specializations.
- **Battleground Gear Swap** — Automatically equips a configured equipment set when entering PvP instances.
- **Equipment Set Overlay** — Displays equipment set names on bag and bank item slots.

### Paperdoll
- **Item Level Display** — Shows item levels on each slot in the character and inspect frames, color-coded relative to your average.
- **Durability Display** — Shows durability percentages on applicable slots with color gradient.

### Tooltip
- **Raid Progression** — Shows raid kill progression on player tooltips (hold Shift). Supports all raids from Battle for Azeroth through The War Within, including:
  - Nerub-ar Palace
  - Liberation of Undermine
  - Manaforge Omega

### Datatext
- **Range** — Displays the distance to your current target.

### Automation
- **Auto PvP Release** — Automatically releases spirit in battlegrounds.
- **Watched Faction** — Automatically updates your tracked reputation when gaining faction.
- **Quest Reward Selection** — Highlights the highest vendor-value quest reward.

### Visualization
- **Mover Transparency** — Adjustable transparency for ElvUI movers.
- **Target Class Icon** — Class icon displayed on the target unit frame.
- **Attack Indicator** — Shows when a target is tap-denied but still grants kill credit.
- **GPS Locator** — Direction and range indicator on target and focus frames for group members.
- **Heal Glow** — AoE heals cause affected unit frames to glow briefly.
- **Combat Role Icon Hide** — Hides role icons on unit frames during combat.

## Configuration

All settings are located under the **ElvUI Enhanced Again** section in the ElvUI configuration panel (`/ec`). Features are disabled by default. The addon registers its own ElvUI mover group for positioning the Minimap Button Bar and Raid Marker Bar.

## Contributing

- Report bugs or request features: [GitHub Issues](https://github.com/quinnoshea/ElvUI_Enhanced_Again/issues)
- Source code: [GitHub Repository](https://github.com/quinnoshea/ElvUI_Enhanced_Again)

If you'd like an old v3 feature brought back, open an issue and it will be considered.

## License

See the repository for license information.
