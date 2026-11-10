---
name: book-writing
description: >
 실용서 챕터 초안을 쓴다. 기획 인계와 참조 카드를 받아 집필 관점, 챕터 슬롯(도입, 기준, 근거, 실무
 정리)에 맞춰 본문을 쌓고, 필요 시 경험 장면을 주입한다. 트리거: 챕터 집필, 책 원고, 실용서
 집필, 경험 주입, 관점 선언. 기획은 book-planning, 퇴고는 book-editing, 소설 본문은
 novel-writing을 쓴다.
---

# book-writing

챕터 집필. 퇴고: `book-editing`.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

## 입력

인계 또는 주제, 목차(O). 챕터 2자리(O). `ref-ch{NN}.md`, 관점, 경험, 어미는 인계.

## 워크플로

1. 슬롯 0~2 확인 > `perspective.md`
2. 슬롯 3~5 > `experience-bank.md`
3. 슬롯 초안 3k~6k > `draft-ch{NN}.md`
4. `[TODO-EXP]` 녹임 > `experience-log.md`
5. 통합 점검 > `book-editing`

### 챕터 슬롯

도입(후크>다리>약속) > 소제목(기준>근거) > 실무 정리 > 연결. `references/chapter-craft.md`

### 문체

mystyle > template > 원고 일관. 인물 문장 복제 기본값 금지.

### 자가 점검

기준 역전, 메타 선언, 금지어. 미달 구간 재작성 2회.

## 체인

```markdown
## 체인 상태
- pipeline: book
- skill: book-writing
- status: done | partial
- next: book-editing
- handoff: draft-ch{NN}.md
```

## 규칙

챕터마다 어미, 관점 재확인. 밖 팩트 `[TODO-FACT]`/`[TODO-EXAMPLE]`.

## 완성

슬롯, 실무, 연결, 점검, 등급, 체인

## 형제

research / editing / feedback / novel-writing
