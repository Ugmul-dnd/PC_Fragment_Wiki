# Fragments of the Fallen Player Wiki

This is the player-facing MkDocs wiki for the campaign.

It should contain only what the players know, have seen, have been told, or can safely remember between sessions. Do not copy DM-only scene files, monster notes, future arc plans, hidden motives, encounter prep, or private tracker details into this folder.

## Local Preview

From this folder:

```powershell
pip install -r requirements.txt
mkdocs serve
```

Then open the local preview URL MkDocs prints.

## Cloudflare Pages

Suggested Cloudflare Pages settings:

| Setting | Value |
|---|---|
| Root directory | `11_PC_Wiki` |
| Build command | `pip install -r requirements.txt && mkdocs build` |
| Build output directory | `site` |

## Update Rule

After each session:

1. Add a new player-facing recap in `docs/session_recaps/`.
2. Update `docs/story_so_far.md`.
3. Update known NPCs, locations, items, and open questions only with player-safe information.
4. Add the new recap to the `nav` section in `mkdocs.yml`.
