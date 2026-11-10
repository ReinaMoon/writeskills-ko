---
name: lecture-plan
description: >
 강의, 워크숍 기획서. 대상, 학습 목표, 시간, 꼭지, 수강생 산출물 + 인계. 트리거: 강의 기획,
 워크숍, 강의안, 커리큘럼, 학습 목표, 목차, 출강. 조사 lecture-research, 메시지 lecture-blueprint.
---

# lecture-plan

설계 단계. 슬라이드, pptx 금지. 산출: `LP_*.md`, `00-handoff.md`.

## 코어 참조

필수: `pipeline-convention`, `research-card-schema`, `output-rules` (`../../00-core/...`)
선택: `runtime-files`, `quality-gates` → `../../00-core/routing/core-ref-diet.md`

## 입력

주제(O), 시간, 형태(권장), 용도, 기존자료(선택). 빈 필수는 질문 1회, 추측 금지.

## 워크플로

`입력, 타깃 → 초안 → 관문1 → 인계`

- 타깃 5항: 직무, 사전지식, 동기, 이탈2+, 반응2+. `templates/plan-template.md`
- 목표 행동 동사만(이해/안다/파악 금지). 꼭지별 분, 산출물, 실습, 합=총시간(꼭지 15~45분)
- **관문1** 12항≥10. 실패 2회 → 입력 회귀
- handoff 0~6. 슬라이드≈꼭지×3~5+2. 15장+ research>blueprint, 10장- BP 생략 가능
- 압축 요청: 4필드 확인 후 연속, 인계 필수

## 출력

`LP_{강의명}_{YYYYMMDD}.md`, `00-handoff.md`. FM: `lecture-plan`, `gate_1_passed`, `next_skill`.

```markdown
## 체인 상태
- pipeline: lecture | skill: lecture-plan
- status: done | blocked | partial
- next: lecture-research | lecture-blueprint
- handoff: 00-handoff.md
```

## 규칙, 완성

본문 초안 금지. 과장, 무근거 시장성 금지. 관문1 전 research 금지.
완성: 타깃5, 목표, 꼭지, 관문≥10, handoff 0~4, 체인.

## 형제

`lecture-research` 소재 / `lecture-blueprint` 메시지 / `lecture-slides` 덱
