---
name: bizplan-pitch
description: >
 BP→피치 스토리보드, MD 슬라이드 스펙. 패턴 A/B/C. pptx 요청 시.
 트리거: 피치덱, 투자, 데모데이, IR, 피치 스토리보드.
 bizplan-write, lecture-slides(강의).
---

# bizplan-pitch

스토리보드+`PS_*.md` 기본. 17장 고정 없음.

## 코어 참조

필수 bizplan 3종. `core-ref-diet.md`. 예시 `examples/pitch-12-slides.md`

## 입력

BP md(권장), 시간(5/7/10분), BP없으면 핵심6항.

## 워크플로

추출(`narrative-patterns.md`)→패턴 A Problem|B Traction|C Market→12~15장→PS md(1장1메시지, `storyboard.md`)→pptx 선택

```markdown
## 체인 상태
- pipeline: bizplan | skill: bizplan-pitch | pattern: A|B|C
- status: done|partial | handoff: PS_*.md | runtime: none|pptx
```

## 규칙

글머리 5↓. 수치 BP근거. 강의→`lecture-slides`.

## 완성

패턴, 장별메시지, 체인.

## 형제

`bizplan-write`, `bizplan-research`, `lecture-slides`
