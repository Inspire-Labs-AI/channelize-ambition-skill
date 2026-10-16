# channelize-ambition

An agent skill. When invoked, it does **not** stop at research, a plan, or a
brief. It rewrites the ask, picks one direction, then **delivers the finished
work** (doc, code, analysis, deck, email, fix) in the same turn, with a
verification check attached.

## What it actually produces

For `/channelize-ambition <your goal>` the agent must return:

1. **The finished deliverable**, the literal request plus the higher-leverage
   version on top. Never a plan instead of the thing.
2. **The answer or decision**, 3 lines, marked *confirmed*, *partially
   confirmed* or *unconfirmed*.
3. **How it was channelized**: the rewritten ask, the direction (speed,
   altitude, depth, range) and why, the bar, and "wrong if".
4. **Proof**: the check run against a threshold set before the work, traps
   marked present/absent, objections handled, stop reason.
5. **Open loop**: any check handed to the user, plus the next decision.

If a step cannot be run this turn, the agent reports which one and why. It
never claims a check passed without the output, and never invents a fact: every
number in the deliverable is computed, sourced, or the user's own input.

## Install

No Node, no npm, no git, no credentials. Pick the command for the system, run
one of these, then restart the agent.

**macOS, Linux, WSL, Git Bash** (shell with `curl` or `wget`):

```sh
curl -fsSL https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.sh | sh
```

**Windows PowerShell / pwsh** (no `sh` available):

```powershell
irm https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.ps1 | iex
```

Decision rule for an agent: if `$PSVersionTable` exists, use the PowerShell
command; otherwise use the shell command.

Both scripts:

- detect which agents are present and copy `SKILL.md` into each skills folder;
- create the folders if missing;
- are idempotent, so re-running is safe;
- accept `--all` / `-All` to install into every known folder even when the agent
  was not detected;
- download from this repo when run outside a local checkout.

Result after install:

```
~/.claude/skills/channelize-ambition/SKILL.md        Claude Code
~/.codex/skills/channelize-ambition/SKILL.md         Codex
~/.config/opencode/skills/channelize-ambition/SKILL.md   OpenCode
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

The agent sizes the task, rewrites the ask (asking at most 3 questions once, or
guessing if told to just do it), picks one direction of ambition, writes the
brief, **executes the work, verifies it, and returns the deliverable**.

## File

```
skills/channelize-ambition/SKILL.md
```
