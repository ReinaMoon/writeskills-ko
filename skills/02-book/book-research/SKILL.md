---
name: book-research
description: >
 실용서 챕터용 참조 카드를 만든다. 집필 전(A)은 근거, 수치, 사례를 압축하고, 초안 후(B)는
 원고와 대조해 인용 위치, 검증 결과를 붙인다. 납품형 보고서가 아니다. 트리거: 챕터 리서치,
 책 리서치, 참조 카드, 집필 전 조사, 원고 검증 리서치. 조사 보고서는 research-report,
 출처 표기는 book-citation을 쓴다.
---

# book-research

챕터 참조 카드. A 1,000~1,200자 / B 1,500~2,200자.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/filled-card-a.md`

## 입력

챕터 주제/번호(O). 모드: 원고 있으면 B 없으면 A. `00-handoff.md`, B는 원고.

## 워크플로

1. 맥락: 슬롯 6 우선, 없으면 4, 주제 방향 4항. B는 원고 검증 대상
2. 조사: 키워드 3~5, 원문 확인. 스니펫 `[스니펫: 원문 미확인]`. 빈 `[조사 미흡]`
3. 팩: `research-card-schema` > `ref-ch{NN}.md`

복수 챕터 순차. 중복 팩트 첫 챕터 + 교차 참조. `references/card-checklist.md`

## 체인

```markdown
## 체인 상태
- pipeline: book
- skill: book-research
- status: done | partial
- next: book-writing | book-editing
- handoff: ref-ch{NN}.md
```

## 규칙

5절 보고서 금지. C급 단독 주장 금지. 팩 통째 금지. 사실만.

## 완성

모드, 번호, 슬롯, 등급, 분량, B 불일치, 체인

## 형제

writing / editing / citation / research-report
