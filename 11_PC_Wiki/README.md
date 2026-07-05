# Fragments of the Fallen Player Wiki

This is the player-facing MkDocs wiki for the campaign.

It should contain only what the players know, have seen, have been told, or can safely remember between sessions. Do not copy DM-only scene files, monster notes, future arc plans, hidden motives, encounter prep, or private tracker details into this folder.

## Local Preview

Double-click:

- `run_pc_wiki.bat`

The preview opens at `http://127.0.0.1:8001`. The batch file creates and uses a shared Python environment outside the campaign folder:

```text
%LOCALAPPDATA%\Fragments_of_the_Fallen_PC_Wiki\.venv
```

To build a static local copy without adding extra generated files to this folder, double-click:

- `build_pc_wiki.bat`

The built site is saved outside the campaign folder:

```text
%LOCALAPPDATA%\Fragments_of_the_Fallen_PC_Wiki\site
```

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
