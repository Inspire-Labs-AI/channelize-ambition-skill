#!/usr/bin/env sh
# Install the channelize-ambition skill into your coding agents' skills folders.
set -eu

REPO="Inspire-Labs-AI/channelize-ambition-skill"
BRANCH="main"
SKILL="channelize-ambition"
RAW="https://raw.githubusercontent.com/${REPO}/${BRANCH}/skills/${SKILL}/SKILL.md"

ALL=0
for arg in "$@"; do
  case "$arg" in
    --all|-a) ALL=1 ;;
    --help|-h)
      echo "Usage: install.sh [--all]"
      echo "  Installs the ${SKILL} skill into detected agent skills folders."
      echo "  --all   install into every known folder, even if the agent is not detected"
      exit 0 ;;
    *)
      echo "Unknown option: $arg (try --help)" >&2
      exit 2 ;;
  esac
done

# --- locate the SKILL.md source (local checkout, else download it) ---
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" 2>/dev/null && pwd || echo "")
TMP=""
cleanup() { [ -n "$TMP" ] && rm -f "$TMP" || true; }
trap cleanup EXIT INT TERM

if [ -n "$SCRIPT_DIR" ] && [ -f "${SCRIPT_DIR}/skills/${SKILL}/SKILL.md" ]; then
  SRC="${SCRIPT_DIR}/skills/${SKILL}/SKILL.md"
  echo "Using local copy: ${SRC}"
else
  TMP="${TMPDIR:-/tmp}/${SKILL}.$$.md"
  if command -v curl >/dev/null 2>&1; then
    curl -fsSL "${RAW}" -o "${TMP}"
  elif command -v wget >/dev/null 2>&1; then
    wget -qO "${TMP}" "${RAW}"
  else
    echo "ERROR: need curl or wget to download the skill." >&2
    exit 1
  fi
  SRC="${TMP}"
  echo "Downloaded: ${RAW}"
fi

installed=0

install_into() {
  target_dir="$1"
  mkdir -p "${target_dir}"
  cp "${SRC}" "${target_dir}/SKILL.md"
  echo "  ok  ${target_dir}/SKILL.md"
  installed=$((installed + 1))
}

maybe_install() {
  label="$1"; base="$2"; cmd="$3"
  if [ "${ALL}" -eq 1 ] || [ -d "${base}" ] || { [ -n "${cmd}" ] && command -v "${cmd}" >/dev/null 2>&1; }; then
    echo "${label}"
    install_into "${base}/${SKILL}"
  fi
}

echo "Installing skill: ${SKILL}"

maybe_install "Claude Code"      "${HOME}/.claude/skills"          "claude"
maybe_install "Codex"            "${HOME}/.codex/skills"           "codex"
maybe_install "OpenCode"         "${HOME}/.config/opencode/skills" "opencode"
maybe_install "Universal (.agents)" "${HOME}/.agents/skills"       ""

if [ "${installed}" -eq 0 ]; then
  echo "No agents detected. Re-run with --all to install into every known folder."
  exit 1
fi

echo ""
echo "Done. ${installed} location(s) updated."
echo "Restart your agent, then type /${SKILL} (Claude Code, OpenCode) or \$${SKILL} (Codex)."
