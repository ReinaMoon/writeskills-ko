#!/usr/bin/env python3
"""Build ChatGPT/OpenAI portable plugin zips.

Zip root is plugin.json plus skills/<skill-name>/SKILL.md.
00-core is copied into each skill at references/core/ and relative links are rewritten.

Usage (repo root):
  python3 scripts/package-chatgpt-plugin.py
  python3 scripts/package-chatgpt-plugin.py novel edit
"""

from __future__ import annotations

import json
import os
import re
import shutil
import sys
import tempfile
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SKILLS = ROOT / "skills"
CORE = SKILLS / "00-core"
OUT = ROOT / "dist" / "chatgpt"

PACKS: dict[str, list[str] | None] = {
    "writeskills-ko": None,  # all skills
    "writeskills-ko-it": [
        "doc-meeting",
        "doc-1on1",
        "doc-weekly",
        "doc-project-book",
        "doc-runbook",
        "doc-confluence",
        "doc-adr",
        "doc-rfc",
        "doc-api",
        "doc-changelog",
        "doc-postmortem",
        "doc-pr",
    ],
    "writeskills-ko-blog": ["write-blog"],
    "writeskills-ko-novel": [
        "novel-planning",
        "novel-voice",
        "novel-writing",
        "novel-continuity",
        "book-editing",
    ],
    "writeskills-ko-career": [
        "career-resume",
        "career-cover-letter",
        "career-interview",
    ],
    "writeskills-ko-edit": ["edit-de-ai", "edit-proofread"],
}

BLURBS = {
    "writeskills-ko": "한국어 글쓰기 스킬 47개. IT 문서, 블로그, 소설, 이력서, AI 말투 교정.",
    "writeskills-ko-it": "회의록, 주간, 런북, ADR, 장애 회고, PR 설명.",
    "writeskills-ko-blog": "검색형 기술 블로그.",
    "writeskills-ko-novel": "소설 기획, 문체, 씬, 연속성, 퇴고.",
    "writeskills-ko-career": "이력서, 자기소개서, 면접.",
    "writeskills-ko-edit": "AI 말투 제거와 맞춤법, 번역투 교정.",
}

CORE_LINK = re.compile(r"(?:\.\./)+00-core/")


def discover() -> dict[str, Path]:
    found: dict[str, Path] = {}
    for skill_md in SKILLS.rglob("SKILL.md"):
        if "00-core" in skill_md.parts:
            continue
        folder = skill_md.parent
        name = folder.name
        if name in found:
            raise SystemExit(f"duplicate skill name: {name}")
        found[name] = folder
    return found


def rewrite_core_links(skill_root: Path) -> None:
    target = skill_root / "references" / "core"
    for md in skill_root.rglob("*.md"):
        text = md.read_text(encoding="utf-8")
        if "00-core/" not in text:
            continue
        rel = Path(os_relpath(target, md.parent)).as_posix()
        if not rel.endswith("/"):
            rel += "/"
        md.write_text(CORE_LINK.sub(rel, text), encoding="utf-8")


def os_relpath(target: Path, start: Path) -> str:
    return Path(os.path.relpath(target, start)).as_posix()


def copy_tree(src: Path, dest: Path) -> None:
    """Copy file contents only. Some filesystems reject metadata updates."""
    dest.mkdir(parents=True, exist_ok=True)
    for path in src.rglob("*"):
        target = dest / path.relative_to(src)
        if path.is_dir():
            target.mkdir(parents=True, exist_ok=True)
        elif path.is_file():
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(path.read_bytes())


def stage_skill(src: Path, dest: Path) -> None:
    copy_tree(src, dest)
    copy_tree(CORE, dest / "references" / "core")
    rewrite_core_links(dest)


def manifest(name: str) -> dict:
    return {
        "$schema": "https://agent-plugins.org/schemas/1.0.0/plugin.schema.json",
        "name": name,
        "version": "0.1.0",
        "description": BLURBS[name],
        "license": "CC-BY-SA-4.0",
        "repository": "https://github.com/ReinaMoon/writeskills-ko",
        "homepage": "https://github.com/ReinaMoon/writeskills-ko",
        "keywords": ["korean", "writing", "skills", "blog", "novel", "it-docs"],
        "author": {"name": "Juyoung Moon, Eun Kyoon Kim"},
    }


def build(name: str, wanted: list[str] | None, catalog: dict[str, Path]) -> Path:
    names = sorted(catalog) if wanted is None else wanted
    missing = [n for n in names if n not in catalog]
    if missing:
        raise SystemExit(f"{name}: unknown skills {missing}")

    staging = Path(tempfile.mkdtemp(prefix=f"{name}-"))
    skills_root = staging / "skills"
    skills_root.mkdir(parents=True)
    for skill_name in names:
        stage_skill(catalog[skill_name], skills_root / skill_name)

    (staging / "plugin.json").write_text(
        json.dumps(manifest(name), ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    OUT.mkdir(parents=True, exist_ok=True)
    zip_path = OUT / f"{name}.zip"
    if zip_path.exists():
        zip_path.unlink()
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
        for path in sorted(staging.rglob("*")):
            if path.is_file():
                arc = path.relative_to(staging).as_posix()
                zf.write(path, arc)
    shutil.rmtree(staging, ignore_errors=True)
    print(f"{zip_path} ({len(names)} skills)")
    return zip_path


def main() -> None:
    catalog = discover()
    selected = sys.argv[1:]
    alias = {
        "all": "writeskills-ko",
        "it": "writeskills-ko-it",
        "blog": "writeskills-ko-blog",
        "novel": "writeskills-ko-novel",
        "career": "writeskills-ko-career",
        "edit": "writeskills-ko-edit",
    }
    if not selected:
        targets = list(PACKS)
    else:
        targets = [alias.get(s, s) for s in selected]
    for name in targets:
        if name not in PACKS:
            raise SystemExit(f"unknown pack {name}. choices: {', '.join(PACKS)}")
        build(name, PACKS[name], catalog)


if __name__ == "__main__":
    main()
