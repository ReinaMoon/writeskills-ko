---
name: career-cover-letter
description: >
 자기소개서, 지원동기, 커버레터. 문항별 경험 1개 선택 + STAR 구조 + 글자수 맞춤.
 트리거: 자기소개서, 자소서, 지원동기, 커버레터, cover letter, 입사 후 포부, 문항.
 이력서는 career-resume, 면접은 career-interview.
---

# career-cover-letter

문항 1개 = 경험 1개. 경험 창작 금지.

## 코어 참조

필수: `../../00-core/principles/korean-prose-rules.md`, `../../00-core/principles/ai-tone-patterns.md`  
레퍼런스: `references/question-types.md`  
예시: `examples/star-answer.md`

## 입력

문항 목록 + 글자수(필수), 경험 원자료 또는 경력기술서(필수), 회사/직무 정보(권장).

## 워크플로

1. 문항 유형 분류 (`question-types.md`).
2. 문항별 후보 경험 2개 제시, 중복 없이 배정. 사용자 확인.
3. STAR 골격: 상황 15%, 과제 15%, 행동 50%, 결과 20%.
4. 첫 문장은 결론 또는 장면. 수사 의문문 금지.
5. 글자수 맞춤 (공백 포함 기준, 목표 90~100%).
6. edit-de-ai 기준 자가 점검.

## 출력

```markdown
## 문항 배정
| 문항 | 유형 | 경험 | 이유 |
## 문항 1 (n/m자)
## 확인 필요
```

## 규칙

- "열정", "성실", "소통" 같은 단어는 행동으로 증명, 단어 자체 금지.
- 회사 칭찬 나열 금지. 지원동기는 내 경험과 회사 과제의 접점.
- 다른 회사명, 이전 문항 복붙 흔적 점검.
- 글자수 초과 금지.

## 완성

문항별 경험 중복 없음, STAR 비율, 글자수 범위, 회사명 점검

## 형제

career-resume / career-interview / edit-de-ai / edit-proofread
