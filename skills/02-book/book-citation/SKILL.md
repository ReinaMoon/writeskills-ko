---
name: book-citation
description: >
 완성된 책 원고에서 인용, 참조를 탐지해 본문 출처와 참고문헌을 붙인다. 국내 실용서, KCI, APA, 
 Chicago, 간략형 중 표기 방식을 고르고, book-research 카드 출처를 1차로 대조한다.
 트리거: 출처 표기, 참고문헌, 각주, 미주, 인용, 레퍼런스. 퇴고 형식 통일만은 book-editing,
 블로그, 보고서 출처는 research-report를 쓴다.
---

# book-citation

출처 발견, 삽입. 형식만: book-editing Pass3.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/style-samples.md`

## 입력

원고(O). 표기 방식(O). `ref-ch{NN}.md` 권장.

## 워크플로

1. 국내실용/KCI/APA7/Chicago/간략. `[미정]` 후 슬롯0
2. 인용 탐지, 2챕터+ 통합
3. ①카드 ②본문 ③웹 ④사용자. ❌ 방침 전 4단계 금지
4. 본문+참고문헌. 임의 출처 금지
5. Evaluator 1:1, 2회 재점검

## 체인

```markdown
## 체인 상태
- pipeline: book
- skill: book-citation
- status: done | partial
- next: book-feedback | none
```

산출: `draft-ch{NN}-cited.md`

## 규칙

불확실 채우기 금지. URL 접속일 권장.

## 완성

방식, ❌방침, Evaluator, 체인

## 형제

research / editing / feedback
