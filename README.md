# channelize-ambition

An agent skill: takes any goal or description, picks the single highest-leverage
direction, writes an expert brief, then executes it against a check outside the
model.

## Install

No Node, no npm, no git, no credentials. Pick the command for the system, run
one of these, then restart the agent.

**macOS, Linux, WSL, Git Bash** (any shell that has `curl` or `wget`):

```sh
curl -fsSL https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.sh | sh
```

**Windows PowerShell / pwsh** (no `sh` available):

```powershell
irm https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.ps1 | iex
```

Agent decision rule: if `$env:OS` exists or `$PSVersionTable` exists, use the
PowerShell command; otherwise use the shell command.

Both scripts:

- detect which agents are present and copy `SKILL.md` into each one's skills
  folder;
- create the folders if missing;
- are idempotent, so re-running is safe;
- support `--all` / `-All` to install into every known folder even when the
  agent was not detected;
- fall back to downloading from this repo when run outside a local checkout.

Result after install:

```
~/.claude/skills/channelize-ambition/SKILL.md        Claude Code
~/.codex/skills/channelize-ambition/SKILL.md         Codex
~/.config/opencode/skills/channelize-ambition/…      OpenCode
~/.agents/skills/channelize-ambition/SKILL.md        universal agents
```

### Manual (no shell available)

Copy `skills/channelize-ambition/SKILL.md` to
`<skills-dir>/channelize-ambition/SKILL.md` in any one of the folders above.

## Use

After restarting the agent:

```
/channelize-ambition your goal or description
```

On Codex, use `$channelize-ambition`.

It sizes the task, asks for clarification at most once (or guesses if told to
just do it), picks one direction of ambition (speed, altitude, depth, range),
writes the brief, and does the work in the same turn.

## File

```
skills/channelize-ambition/SKILL.md
```
