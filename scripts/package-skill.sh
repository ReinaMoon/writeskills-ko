#!/usr/bin/env bash
# Package one skill folder as Claude-uploadable zip.
# Copies linked 00-core files into references/core/ inside a staging copy.
#
# Usage (repo root):
#   ./scripts/package-skill.sh skills/08-it-docs/doc-weekly
# Output:
#   dist/<skill-name>.zip

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <path-to-skill-dir>" >&2
  exit 1
fi

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$1"
if [[ ! "$SRC" = /* ]]; then
  SRC="$ROOT/$SRC"
fi
if [[ ! -f "$SRC/SKILL.md" ]]; then
  echo "No SKILL.md in $SRC" >&2
  exit 1
fi

NAME="$(basename "$SRC")"
STAGING="$ROOT/dist/.staging/$NAME"
OUT_DIR="$ROOT/dist"
rm -rf "$STAGING"
mkdir -p "$STAGING" "$OUT_DIR"
cp -R "$SRC/." "$STAGING/"

CORE_ROOT="$ROOT/skills/00-core"
mkdir -p "$STAGING/references/core"

# Collect ../../00-core/... references from SKILL.md and rewrite to references/core/...
python3 - "$STAGING" "$CORE_ROOT" <<'PY'
import re, sys, shutil
from pathlib import Path
staging = Path(sys.argv[1])
core_root = Path(sys.argv[2])
skill = staging / "SKILL.md"
text = skill.read_text(encoding="utf-8")
paths = set(re.findall(r"\.\./\.\./00-core/([\w./\-]+\.md)", text))
# also bare mentions like `writing-principles` are not copied; only explicit relative paths
for rel in sorted(paths):
    src = core_root / rel
    dst = staging / "references" / "core" / rel
    if not src.is_file():
        print(f"warn: missing core file {rel}", file=sys.stderr)
        continue
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)
    print(f"vendored {rel}")
text2 = text.replace("../../00-core/", "references/core/")
if text2 != text:
    skill.write_text(text2, encoding="utf-8")
    print("rewrote SKILL.md core paths")
PY

(
  cd "$ROOT/dist/.staging"
  rm -f "$OUT_DIR/$NAME.zip"
  zip -r "$OUT_DIR/$NAME.zip" "$NAME" >/dev/null
)

echo "Wrote $OUT_DIR/$NAME.zip"
unzip -l "$OUT_DIR/$NAME.zip" | head -n 20
