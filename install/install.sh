#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Install thesis-supervisor-se-skill from a local clone.

Usage:
  ./install/install.sh --agent <agent> --scope <global|project> [options]

Agents:
  claude-code  Global: ~/.claude/skills/thesis-supervisor-se
               Project: .claude/skills/thesis-supervisor-se
  codex        Global: ${CODEX_HOME:-~/.codex}/skills/thesis-supervisor-se
               Project: .codex/skills/thesis-supervisor-se
  pi           Global: ~/.pi/agent/skills/thesis-supervisor-se
               Project: .pi/skills/thesis-supervisor-se
  generic      Requires --target <directory>

Options:
  --agent NAME       Target agent.
  --scope SCOPE      global or project.
  --target PATH      Required for generic; overrides destination for all agents.
  --mode MODE        symlink (default) or copy.
  --update           Replace an existing installation.
  --help             Show this message.

Examples:
  ./install/install.sh --agent claude-code --scope global
  ./install/install.sh --agent codex --scope global --mode copy
  ./install/install.sh --agent generic --scope project --target .agent/skills
EOF
}

agent=""
scope=""
target=""
mode="symlink"
update=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --agent) agent="${2:-}"; shift 2 ;;
    --scope) scope="${2:-}"; shift 2 ;;
    --target) target="${2:-}"; shift 2 ;;
    --mode) mode="${2:-}"; shift 2 ;;
    --update) update=1; shift ;;
    --help|-h) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage >&2; exit 2 ;;
  esac
done

[[ -n "$agent" && -n "$scope" ]] || { echo "--agent and --scope are required" >&2; usage >&2; exit 2; }
[[ "$scope" == "global" || "$scope" == "project" ]] || { echo "--scope must be global or project" >&2; exit 2; }
[[ "$mode" == "symlink" || "$mode" == "copy" ]] || { echo "--mode must be symlink or copy" >&2; exit 2; }

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$(cd "$script_dir/.." && pwd)"
[[ -f "$source_dir/SKILL.md" ]] || { echo "SKILL.md not found in repository root" >&2; exit 1; }

if [[ -z "$target" ]]; then
  case "$agent:$scope" in
    claude-code:global) target="$HOME/.claude/skills/thesis-supervisor-se" ;;
    claude-code:project) target=".claude/skills/thesis-supervisor-se" ;;
    codex:global) target="${CODEX_HOME:-$HOME/.codex}/skills/thesis-supervisor-se" ;;
    codex:project) target=".codex/skills/thesis-supervisor-se" ;;
    pi:global) target="$HOME/.pi/agent/skills/thesis-supervisor-se" ;;
    pi:project) target=".pi/skills/thesis-supervisor-se" ;;
    generic:*) echo "--target is required for generic" >&2; exit 2 ;;
    *) echo "Unsupported agent: $agent" >&2; exit 2 ;;
  esac
fi

if [[ -e "$target" || -L "$target" ]]; then
  if [[ "$update" -ne 1 ]]; then
    echo "Destination already exists: $target" >&2
    echo "Use --update to replace it, or choose another --target." >&2
    exit 1
  fi
  rm -rf "$target"
fi

mkdir -p "$(dirname "$target")"

if [[ "$mode" == "symlink" ]]; then
  ln -s "$source_dir" "$target"
else
  cp -R "$source_dir" "$target"
  rm -rf "$target/.git" "$target/.github"
fi

echo "Installed thesis-supervisor-se at: $target"
echo "Mode: $mode"
echo "Restart the agent, then explicitly ask it to use thesis-supervisor-se if discovery is not automatic."
