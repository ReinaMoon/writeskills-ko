---
name: lecture-slides
description: >
 MD 슬라이드 스펙 조판, pptx 요청 시만. 트리거: 슬라이드 스펙, 덱, 교안.
 blueprint, review.
---

# lecture-slides

**기준 = MD 스펙.** pptx/docx → `adapters/runtime-files.md` 선택.

## 코어 참조

필수: `pipeline-convention`, `research-card-schema`, `output-rules`
선택 → `../../00-core/routing/core-ref-diet.md`

## 입력

`BP_*`(권장), `LP/RL`, 또는 주제, 대상, 시간(패스트).

## 워크플로

**0 스캔** BP>RL>LP. gate 통과 BP는 메시지 재해석 금지. LP만 15장+이면 blueprint 권장.

**3 스펙** `references/slide-spec.md` → `SS_*.md`. BP false → blueprint. `slide-types.md`.

**4 바이너리** 명시 요청만. MD 우선. 경로 하드코딩 금지. 실패해도 MD 보존.

**5** 노트, 핸드아웃 MD, docx 선택.

## 출력

```markdown
## 체인 상태
- skill: lecture-slides | next: lecture-review
- handoff: SS_{강의명}_{YYYYMMDD}.md
- runtime: none | pptx
```

## 규칙, 완성

스펙 없이 pptx 금지. vault 옵션 `vault-obsidian.md`.
완성: 스캔 확인, 장별 메시지, BP 불변, 체인.

## 형제

blueprint / review / image-content
