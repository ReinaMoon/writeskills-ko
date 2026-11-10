#!/usr/bin/env bash
# Package starter packs A/B/C/F/L/M.
# Actually packages each skill zip under dist/ and writes a manifest.
# Usage: bash scripts/package-all-starter.sh

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

PACK_A=(
  skills/08-it-docs/doc-meeting
  skills/08-it-docs/doc-1on1
  skills/08-it-docs/doc-weekly
)
PACK_B=(
  skills/08-it-docs/doc-project-book
  skills/08-it-docs/doc-runbook
  skills/08-it-docs/doc-confluence
  skills/08-it-docs/doc-adr
  skills/08-it-docs/doc-postmortem
  skills/08-it-docs/doc-pr
)
PACK_C=(
  skills/01-writing/write-blog
)
PACK_F=(
  skills/03-novel/novel-planning
  skills/03-novel/novel-voice
  skills/03-novel/novel-writing
  skills/03-novel/novel-continuity
  skills/02-book/book-editing
)
PACK_L=(
  skills/11-career/career-resume
  skills/11-career/career-cover-letter
  skills/11-career/career-interview
)
PACK_M=(
  skills/10-edit/edit-de-ai
  skills/10-edit/edit-proofread
)

package_list() {
  local pack="$1"; shift
  local out="$ROOT/dist/starter-${pack}.manifest.txt"
  mkdir -p "$ROOT/dist"
  : > "$out"
  for s in "$@"; do
    bash "$ROOT/scripts/validate-skill.sh" "$s"
    bash "$ROOT/scripts/package-skill.sh" "$s"
    echo "$(basename "$s").zip" >> "$out"
  done
  echo "Wrote $out"
}

package_list A "${PACK_A[@]}"
package_list B "${PACK_B[@]}"
package_list C "${PACK_C[@]}"
package_list F "${PACK_F[@]}"
package_list L "${PACK_L[@]}"
package_list M "${PACK_M[@]}"
echo "Done. Individual zips in dist/. Upload per skill; use manifests for pack lists."
