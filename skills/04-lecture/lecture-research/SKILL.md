---
name: lecture-research
description: >
 기획 꼭지별 12슬롯 강의 노트. 트리거: 강의 리서치, 교안 조사, RL, 데이터 포인트.
 기획 lecture-plan, 일반 research-topic.
---

# lecture-research

꼭지 **재료 카드**. 코어 lecture 스키마. 보고서 아님.

## 코어 참조

필수: `pipeline-convention`, `research-card-schema`, `output-rules`
선택: `runtime-files`, `quality-gates` → `../../00-core/routing/core-ref-diet.md`

## 입력

`LP_*.md`(O), handoff(권장), 깊이(기본3~5/딥5~10), 본인사례(선택). 무기획→plan. 일반주제→research-topic.

## 워크플로

`기획 → 질문 → 슬롯 → 관문2 → RL파일`

- 꼭지당 Q 5~7. 12슬롯, N/A 허용. A/B/C(C단독 핵심수치 금지). `references/slot-checklist.md`
- **관문2**: 슬롯, 데이터3+, AB사례2+, 반박2+, 시각1+, 멘트3, 4단시간=꼭지분. AB≥70%. 보강≤2회
- 흐름: 도입>전개(≤60%)>절정(≥30%)>정리
- `RL_{강의명}_{YYYYMMDD}.md`

## 출력

```markdown
## 체인 상태
- pipeline: lecture | skill: lecture-research
- status: done | partial
- next: lecture-blueprint | lecture-slides
- handoff: RL_{강의명}_{YYYYMMDD}.md
```

## 규칙, 완성

복붙 금지, 구술 멘트, 사례0 사유. 관문2 전 blueprint 금지(BP생략 명시 제외).
완성: 12슬롯, 관문2, 출처, 만료, 체인.

## 형제

plan / blueprint / research-topic / research-report
