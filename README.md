# Chronos Arr – Profilarr Database

Personal Profilarr-compliant database for the Chronos homelab Arr stack.

## What’s included

- Named regular expressions
- Custom Formats (audio, HDR, language, resolution, sources)
- Quality Definitions (Radarr + Sonarr)
- Quality Profiles (Main, Anime, Foreign, Comedy, Ultra-HD, Ultra-HD-HDR + variants)
- Naming & media management settings

## Structure

```
├── pcd.json      # Database manifest
├── ops/          # Configuration operations
└── tweaks/       # Optional local variants
```
## Usage

1. Link this repository in Profilarr
2. Assign it to your Radarr / Sonarr instances
3. Sync

## Learn More

- [Profilarr Documentation](https://github.com/Dictionarry-Hub/profilarr)
- [Schema Reference](https://github.com/Dictionarry-Hub/schema)
- [Example Database](https://github.com/Dictionarry-Hub/db)
