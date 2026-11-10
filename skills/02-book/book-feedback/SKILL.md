---
name: book-feedback
description: >
 실용서, 서사 원고를 가상 독자(reader) 또는 편집자(editor) 시선으로 점검한다. 관찰과 평가를
 분리하고 수정 우선순위 리포트만 내며 원고를 직접 고치지 않는다. 트리거: 독자 피드백,
 베타리더, 편집자 피드백, 투고 전 점검, 페르소나, 이탈 지점, 콘셉트 진단. 퇴고는
 book-editing, 출처는 book-citation을 쓴다.
---

# book-feedback

게이트. 원고 수정 금지.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/persona-cards.md`

## 입력

원고|목차(O). 모드 reader|editor|both(O). 깊이 critique(기본)|rewrite-suggest. 인계.

비평 규약: `../../00-core/output/critique-only.md`

## 워크플로

1 입력 > 2 축 > 3 페르소나|유형 > 4 관찰 > 5 평가 > 6 우선순위

관찰, 평가 분리. `[원고근거]`/`[시뮬추정]`. L1 보존.

- reader: 페르소나 3~5, 실용 5축 또는 서사 5축, 혼합 상한 7
- editor: 실용만, 다음 단계(수정/베타/투고 검토). 소설은 reader + book-editing 소설 모드
- both: 리포트 2개, 교차 대조 없음

## 출력

High/Mid/Low + 후속 스킬. 게이트 표(반환|보류|무시).

```markdown
## 체인 상태
- pipeline: book
- skill: book-feedback
- status: done | blocked
- next: book-editing | book-research | book-citation | none
- suggested_next: book-editing
- reason: High 이슈 반영 퇴고
- mode: critique | rewrite-suggest
```

## 규칙

위치 관찰만. 칭찬 인플레, 다듬기, 팩트체크 금지. 역할 혼합 금지.

## 완성

모드, 분리 출력, 우선순위, 자동 수정 없음

## 형제

editing / research / writing / planning
