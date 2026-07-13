#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required=(
  ".github/copilot-instructions.md"
  ".github/agents/domain-service-documentation.agent.md"
  ".github/agents/domain-ecosystem-documentation.agent.md"
  "README.md"
  "QUICKSTART.md"
  "USAGE.md"
  "CUSTOMIZATION.md"
  "examples/run-single-repository.prompt.md"
  "examples/run-domain-ecosystem.prompt.md"
  "examples/sample-workspace.code-workspace"
)

failed=0
for item in "${required[@]}"; do
  if [[ ! -s "$ROOT/$item" ]]; then
    echo "MISSING OR EMPTY: $item"
    failed=1
  else
    echo "OK: $item"
  fi
done

for agent in "$ROOT"/.github/agents/*.agent.md; do
  if ! head -n 1 "$agent" | grep -q '^---$'; then
    echo "INVALID FRONTMATTER START: ${agent#$ROOT/}"
    failed=1
  fi
  if ! grep -q '^name:' "$agent" || ! grep -q '^description:' "$agent"; then
    echo "MISSING AGENT METADATA: ${agent#$ROOT/}"
    failed=1
  fi
done

if [[ $failed -ne 0 ]]; then
  echo "Package validation failed."
  exit 1
fi

echo "Package validation passed."
