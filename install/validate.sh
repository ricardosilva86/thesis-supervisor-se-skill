#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
failed=0

fail() {
  echo "FAIL: $*" >&2
  failed=1
}

require_file() {
  [[ -f "$root/$1" ]] || fail "Missing required file: $1"
}

require_dir() {
  [[ -d "$root/$1" ]] || fail "Missing required directory: $1"
}

require_file "SKILL.md"
require_file "README.md"
require_file "LICENSE"

for dir in policy protocols templates rubrics commands examples; do
  require_dir "$dir"
done

if [[ -f "$root/SKILL.md" ]]; then
  first_line="$(head -n 1 "$root/SKILL.md")"
  [[ "$first_line" == "---" ]] || fail "SKILL.md must start with YAML frontmatter delimiter"
  grep -q '^name:' "$root/SKILL.md" || fail "SKILL.md frontmatter missing name"
  grep -q '^description:' "$root/SKILL.md" || fail "SKILL.md frontmatter missing description"
fi

for path in \
  policy/data-ethics-lgpd-ip.md \
  protocols/empirical-experiment.md \
  protocols/llm-agent-evaluation.md \
  protocols/reproducibility.md \
  protocols/defense-readiness.md \
  templates/thesis-charter.md \
  templates/research-protocol.md \
  templates/claims-ledger.md \
  templates/artifact-manifest.md \
  rubrics/research-question.md \
  rubrics/validity-threats.md \
  rubrics/defense-readiness.md \
  commands/thesis-init.md \
  commands/thesis-defense.md; do
  require_file "$path"
done

while IFS= read -r -d '' file; do
  if grep -nE '[[:blank:]]+$' "$file" >/dev/null; then
    fail "Trailing whitespace: ${file#$root/}"
  fi
done < <(find "$root" -type f -name '*.md' -print0)

while IFS= read -r reference; do
  path="${reference#\`}"; path="${path%\`}"
  [[ "$path" == */* ]] || continue
  [[ -e "$root/$path" ]] || fail "Referenced path not found: $path"
done < <(
  grep -rhoE '\`(policy|protocols|templates|rubrics|commands|examples)/[^`[:space:]]+\.md\`' \
    "$root/SKILL.md" "$root/README.md" "$root/commands" "$root/protocols" 2>/dev/null | sort -u
)

if [[ "$failed" -ne 0 ]]; then
  exit 1
fi

echo "OK: thesis-supervisor-se structure and required references are valid."
