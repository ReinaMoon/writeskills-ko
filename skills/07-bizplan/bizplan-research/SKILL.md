---
name: bizplan-research
description: >
 사업 전 P,R,S,C,U 카드 5종, 출처 등급, write 입력 JSON.
 트리거: 사업, 창업 리서치, 시장, 경쟁, TAM SAM SOM, BR 카드, 사전 조사.
 bizplan-write, bizplan-pitch.
---

# bizplan-research

5종 카드+입력. 코어 `profile: biz`. 공모 슬롯 미종속.

## 코어 참조

필수: `research-card-schema`, `pipeline-convention`, `writing-principles`
선택 `core-ref-diet.md`. 예시 `examples/filled-prscu.md`

## 입력

사업한줄, 타깃, 업종, 목적 investor|internal(O). 키워드, U재료(권장).

## 카드 P/R/S/C/U

TAM, 사례, 모델, 경쟁, 팀. `BR_{코드}-카드_{사업}_{YYMMDD}`. `card-checklist.md`, `search-prompts.md`

## 워크플로

정의+U체크 → P~C 조사(A 핵심1+) → `section-mapping` 교차 → 보강 90% → `bizplan_input_*.json`+`missing`, `BR_인덱스_*`

```markdown
## 체인 상태
- pipeline: bizplan | skill: bizplan-research | status: done|partial|blocked
- next: bizplan-write | handoff: BR_*.md + bizplan_input_*.json
```

## 규칙

C급 핵심 금지. 정부매칭 S필수 아님.

## 완성

5카드, A, 교차, json, 체인.

## 형제

`bizplan-write`, `bizplan-pitch`, `research-topic`
