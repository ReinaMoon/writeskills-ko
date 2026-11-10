---
name: book-editing
description: >
 완성된 책, 소설 원고를 구조>문장>교정 3패스로 퇴고한다. Light/Standard/Deep 모드와
 실용서, 소설 모드를 지원한다. 트리거: 퇴고, 원고 퇴고, 3패스 편집, 문체 통일, AI 흔적
 제거, 소설 퇴고. 독자, 편집자 피드백은 book-feedback, 출처는 book-citation,
 집필은 book-writing / novel-writing을 쓴다.
---

# book-editing

3패스 퇴고 정본. 목소리 보존.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/scene-checklist-filled.md`

## 입력

원고(O). Light / Standard / Deep. 실용서|소설. B팩, `style-guide.md`(소설).

## 워크플로

Pass1 구조 > Pass2 문장(금지어, AI) > Pass3 교정 > Evaluator

| 모드 | 분량 |
|------|------|
| Light | 100~105% |
| Standard | 95~110% |
| Deep | 90~120% |

B팩 불일치: Deep 필수.

### 실용서 Pass

1. 논지, 기준>근거, 실무, 중복 
2. 톤, 어미, 전환, AI 흔적 
3. 맞춤법, `[TODO]` 이관. 신규 출처는 book-citation

### 소설 모드

`references/novel-mode.md` 체크리스트. 보이스, 시점, Show, 대사. novel-writing 다음. novel-editing 없음.

Evaluator: 금지어 0, 어미 통일, B 불일치 해소. 소설 보이스, 시점 0.

## 체인

```markdown
## 체인 상태
- pipeline: book | novel
- skill: book-editing
- status: done
- next: book-feedback | book-citation | none
- suggested_next: book-feedback
- reason: 외부 시선 진단(critique 가능)
```

## 규칙

분량 한도 초과 사유. `[TODO-FACT]`>research B.

## 완성

패스, Evaluator, 소설 체크, 체인

## 형제

feedback / citation / research / novel-writing
