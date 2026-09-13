#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Uninstall thesis-supervisor-se-skill.

Usage:
  ./install/uninstall.sh --agent <agent> --scope <global|project> [--target PATH]

Agents: claude-code, codex, pi, generic
EOF
}

agent=""
scope=""
target=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --agent) agent="${2:-}"; shift 2 ;;
    --scope) scope="${2:-}"; shift 2 ;;
    --target) target="${2:-}"; shift 2 ;;
    --help|-h) usage; exit 0 ;;
    *) echo "Unknown option: $1" >&2; usage >&2; exit 2 ;;
  esac
done

[[ -n "$agent" && -n "$scope" ]] || { echo "--agent and --scope are required" >&2; usage >&2; exit 2; }
[[ "$scope" == "global" || "$scope" == "project" ]] || { echo "--scope must be global or project" >&2; exit 2; }

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

if [[ ! -e "$target" && ! -L "$target" ]]; then
  echo "Nothing installed at: $target"
  exit 0
fi

rm -rf "$target"
echo "Removed thesis-supervisor-se from: $target"
