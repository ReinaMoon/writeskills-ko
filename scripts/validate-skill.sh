#!/usr/bin/env bash
# Validate one skill folder before zip upload.
# Usage: bash scripts/validate-skill.sh skills/08-it-docs/doc-weekly

set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${1:-}"
[[ -n "$SRC" ]] || { echo "Usage: $0 <skill-dir>" >&2; exit 1; }
[[ "$SRC" = /* ]] || SRC="$ROOT/$SRC"
[[ -f "$SRC/SKILL.md" ]] || { echo "Missing SKILL.md in $SRC" >&2; exit 1; }

NAME="$(basename "$SRC")"

python3 - "$SRC" "$NAME" "$ROOT" <<'PY'
import re, sys
from pathlib import Path
src = Path(sys.argv[1])
folder = sys.argv[2]
root = Path(sys.argv[3])
text = (src / "SKILL.md").read_text(encoding="utf-8")
m = re.search(r"^---\n(.*?)\n---", text, re.S)
if not m:
    print("FAIL: no YAML frontmatter"); sys.exit(1)
fm = m.group(1)
nm = re.search(r"^name:\s*([^\n]+)", fm, re.M)
if not nm:
    print("FAIL: no name:"); sys.exit(1)
name = nm.group(1).strip().strip("\"'")
if name != folder:
    print(f"FAIL: name '{name}' != folder '{folder}'"); sys.exit(1)
if "description:" not in fm:
    print("FAIL: no description:"); sys.exit(1)
skills_root = root / "skills"
warn = 0
for rel in re.findall(r"\.\./\.\./00-core/([\w./\-]+\.md)", text):
    core = skills_root / "00-core" / rel
    if not core.is_file():
        print(f"WARN: missing core file {rel}")
        warn += 1
print(f"OK: {folder}" + (f" ({warn} warn)" if warn else ""))
sys.exit(0)
PY
