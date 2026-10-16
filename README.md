# channelize-ambition

A [Claude Code](https://claude.ai/code) skill/plugin.

## Install (users)

```
/plugin marketplace add Inspire-Labs-AI/channelize-ambition-skill
```

Then:

```
/plugin install channelize-ambition@channelize-ambition
```

## Skill file

The skill itself lives at:

```
skills/channelize-ambition/SKILL.md
```

Once pushed, an agent or model can fetch it directly (raw):

```
https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/skills/channelize-ambition/SKILL.md
```

## Repo layout

```
.claude-plugin/
  marketplace.json      # marketplace manifest
skills/
  channelize-ambition/
    SKILL.md            # the skill — edit this
```

## Develop

1. Edit `skills/channelize-ambition/SKILL.md`.
2. Add extra files (scripts, references) inside the skill folder.
3. Test locally in Claude Code:
   ```
   /plugin marketplace add .
   /plugin install channelize-ambition@channelize-ambition
   ```
4. Push to GitHub — users install from the repo.

## Publish

Push to GitHub. No build step needed. Update `version` in
`.claude-plugin/marketplace.json` (optional) and bump the plugin description
as needed.
