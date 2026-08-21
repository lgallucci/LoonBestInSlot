# LoonBestInSlot Copilot Instructions

## Architecture Overview
This project consists of two main components:
- **AddonManager** (C# .NET 9 library + Avalonia GUI): Scrapes Wowhead.com for TBC Cataclysm BIS guides and loot data, generates JSON databases and Lua addon files.
- **LoonBestInSlot** (WoW addon in Lua): Displays BIS lists, loot browser, and tooltips in-game.

Data flow: WowheadGuideParser → Importers (Raid, Dungeon, etc.) → JSON in ItemDatabase/ → Lua files in LoonBestInSlot/DB/ → Addon loads data.

## Key Workflows
- **Update BIS data**: Run AddonManager.Avalonia GUI → Select class/spec/phase → Import guides → Generates updated Lua DB files.
- **Build C# components**: `dotnet build AddonManager.sln` or use VS Code tasks (build/publish/watch).
- **Package addon**: GitHub Actions handles linting (Luacheck) and packaging for CurseForge/WoWInterface via .pkgmeta.
- **Debug addon**: Use `/bis` slash command; check SavedVariables for settings.

## Project Conventions
- **Phases**: PreRaid, Phase 1-5 (TBC progression); CurrentPhase constant in code.
- **Item sources**: Types - "Drop", "Quest", "Profession", "PvP", "Vendor", "Reputation", "Dungeon", "Raid", "TierSet".
- **Factions**: "A" (Alliance), "H" (Horde), "B" (Both).
- **C# patterns**: Use AngleSharp for HTML parsing; Puppeteer for dynamic pages; ReactiveUI for Avalonia MVVM.
- **Lua patterns**: LBIS global table; EventFrame for events; Localization via LBIS.L[].
- **File structure**: Importers/ for scraping logic; FileManagers/ for reading/writing data; Models/ for data classes.

## Integration Points
- Wowhead URLs hardcoded in Importers (e.g., RaidImporter.wowheadUriList).
- Localization from Blizzard/LibBabble libraries in LocalizationCreator/.
- Gems/enchants parsed from guide tables; items from markup tables.

## Common Tasks
- Adding new raid: Create Wowhead URL in RaidImporter; run importer.
- Updating phases: Modify Constants.CurrentPhase; re-import guides.
- Fixing parsing: Check WowheadGuideParser for table selectors; update if HTML changes.</content>
<parameter name="filePath">/mnt/Files/GIT/LoonBestInSlot/.github/copilot-instructions.md