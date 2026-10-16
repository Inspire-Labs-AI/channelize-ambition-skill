# channelize-ambition

## What is this

A skill that takes a goal or any description of what you want and channels it
into the single highest-leverage direction, builds the domain expert's playbook,
writes a full expert-grade brief, then executes it.

## The problem it solves

Ask an AI for something and you get the median move: do what was literally
asked, from the material given, with the obvious method, and grade the result
itself. It is competent, plausible, and forgettable, and it quietly caps the
ceiling on every task.

The root cause is that the model never stops to choose a direction, never
studies how the best practitioners in that exact niche actually work, and never
commits to a standard an expert would respect. So it optimizes for "looks done",
not for leverage.

Channelize-ambition attacks exactly that gap. Before doing any work it:

1. Picks the **one direction** of ambition with the most leverage, whether it is
   speed, altitude, depth, or range, and argues for it against the runner-up.
2. Builds the **domain playbook**: how masters of this exact niche do the work,
   their techniques, their bar, and the cases amateurs miss.
3. Writes a **full expert-grade brief**: the instructions a master would hand
   themselves, with methodology, decision rules and a proof.
4. **Executes** it as an investigation, held to an outside check.

The result: work aimed at the outcome instead of the task, judged by evidence
instead of self-assessment, with at least one thing the user didn't already know.

## Install

The skill is just a Markdown file. Installing it means copying it into your
agent's skills folder, which is what registers the `/channelize-ambition`
command.

### Any agent, no Node needed

`install.sh` (macOS, Linux, WSL) and `install.ps1` (Windows) copy the skill into
every agent folder they detect. They only need a shell plus `curl` or `wget`,
never Node.

```sh
curl -fsSL https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.sh | sh
```

```powershell
irm https://raw.githubusercontent.com/Inspire-Labs-AI/channelize-ambition-skill/main/install.ps1 | iex
```

Add `--all` / `-All` to install into every known folder even if the agent was
not detected.

### Cross-agent via the skills CLI

```sh
npx -y skills add Inspire-Labs-AI/channelize-ambition-skill
```

This CLI needs Node 22 or later; on Node 20 it crashes before reading the repo.
If you are on Node 20, use the shell installer above instead.

### Claude Code plugin marketplace

```
/plugin marketplace add Inspire-Labs-AI/channelize-ambition-skill
/plugin install channelize-ambition
```

### Manual

Copy `skills/channelize-ambition/SKILL.md` into any of these folders as
`channelize-ambition/SKILL.md`:

| Agent | Folder |
| --- | --- |
| Claude Code | `~/.claude/skills/` |
| Codex | `~/.codex/skills/` |
| OpenCode | `~/.config/opencode/skills/` or `.opencode/skills/` |
| Universal | `~/.agents/skills/` |

## Use

Restart your agent, then invoke it:

- Claude Code, OpenCode: `/channelize-ambition`
- Codex: `$channelize-ambition`

## Where it is

```
skills/channelize-ambition/SKILL.md
```
