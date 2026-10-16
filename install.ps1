# Install the channelize-ambition skill into your coding agents' skills folders.
[CmdletBinding()]
param([switch]$All)

$ErrorActionPreference = 'Stop'

$Repo   = 'Inspire-Labs-AI/channelize-ambition-skill'
$Branch = 'main'
$Skill  = 'channelize-ambition'
$Raw    = "https://raw.githubusercontent.com/$Repo/$Branch/skills/$Skill/SKILL.md"

# Locate the source SKILL.md (local checkout, else download it).
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$LocalFile = Join-Path $ScriptDir "skills/$Skill/SKILL.md"

if (Test-Path -LiteralPath $LocalFile) {
  $Src = $LocalFile
  Write-Host "Using local copy: $Src"
} else {
  $tmp = Join-Path $env:TEMP "$Skill.$PID.md"
  Write-Host "Downloaded: $Raw"
  Invoke-WebRequest -UseBasicParsing -Uri $Raw -OutFile $tmp
  $Src = $tmp
}

$installed = 0

function Install-Skill([string]$Label, [string]$BaseDir, [string]$Command) {
  $detected = $All -or (Test-Path -LiteralPath $BaseDir) -or ($Command -and (Get-Command $Command -ErrorAction SilentlyContinue))
  if (-not $detected) { return }
  $targetDir = Join-Path $BaseDir $Skill
  New-Item -ItemType Directory -Force -Path $targetDir | Out-Null
  Copy-Item -LiteralPath $Src -Destination (Join-Path $targetDir 'SKILL.md') -Force
  Write-Host "  ok  $targetDir\SKILL.md"
  $script:installed++
}

Write-Host "Installing skill: $Skill"

Install-Skill 'Claude Code'           (Join-Path $HOME '.claude/skills')          'claude'
Install-Skill 'Codex'                 (Join-Path $HOME '.codex/skills')           'codex'
Install-Skill 'OpenCode'              (Join-Path $HOME '.config/opencode/skills') 'opencode'
Install-Skill 'Universal (.agents)'   (Join-Path $HOME '.agents/skills')          ''

if ($installed -eq 0) {
  Write-Host "No agents detected. Re-run with -All to install into every known folder."
  exit 1
}

Write-Host ""
Write-Host "Done. $installed location(s) updated."
Write-Host "Restart your agent, then type /$Skill (Claude Code, OpenCode) or `$$Skill (Codex)."
