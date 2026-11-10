---
name: lecture-blueprint
description: >
 1장=1메시지 BP. 드리프트 방지. 트리거: 블루프린트, 슬라이드 설계, BP, 장별 메시지.
 plan, slides.
---

# lecture-blueprint

pptx 금지. 예시: `examples/drift-check.md`

## 코어 참조

필수: `pipeline-convention`, `research-card-schema`, `output-rules`
선택 → `../../00-core/routing/core-ref-diet.md`

## 입력

`LP_*`(O), `RL_*`(권장), 팔레트(선택). 10장- 특강 BP 생략 가능.

## 워크플로

`입력 → 핵심메시지(3~7, 확인필수) → 분해 → 필드 → 관문BP`

- Ch 5~8장, T-0, T-S, T-Fin. T 3연속 금지. `references/t-type-matching.md`
- 9필드 + `[DIAGRAM/CHART/IMG:]`, 시각 25~50%
- **관문BP** 9항≥7. 자동수정≤2
- `BP_*.md` (`templates/blueprint-template.md`). pptx 요청 시만

## 출력

```markdown
## 체인 상태
- pipeline: lecture | skill: lecture-blueprint
- next: lecture-slides
- handoff: BP_{강의명}_{YYYYMMDD}.md
```

## 규칙, 완성

메시지 전 분해 금지. 관문BP 전 slides 금지.
완성: 메시지 확인, 9필드, 관문≥7, 체인.

## 형제

research / slides / review
