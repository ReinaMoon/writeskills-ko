---
name: career-resume
description: >
 이력서, 경력기술서. 업무 나열을 성과 문장(행동+결과+수치)으로 바꾼다. IT 직군 기본.
 트리거: 이력서, 경력기술서, 레쥬메, resume, CV, 경력 정리, 성과 정리, 이직 준비.
 자기소개서는 career-cover-letter, 면접은 career-interview.
---

# career-resume

없는 성과 창작 금지. 수치 없으면 `[수치?]`로 묻는다.

## 코어 참조

필수: `../../00-core/principles/korean-prose-rules.md`, `../../00-core/principles/ai-tone-patterns.md`  
레퍼런스: `references/achievement-formula.md`, `references/resume-template.md`  
예시: `examples/task-to-achievement.md`

## 입력

| 항목 | 필수 | 메모 |
|------|------|------|
| 경력 원자료 | O | 회사, 기간, 역할, 한 일 메모, 주간보고, 회고 등 |
| 지원 직무/공고 | 권장 | 있으면 키워드 매칭 |
| 연차, 형식 | 선택 | 국문 경력기술서 기본, 영문 resume 선택 |

## 워크플로

1. 원자료에서 프로젝트 단위로 묶기.
2. 업무 문장을 `achievement-formula.md`로 변환. 수치 없으면 질문 목록.
3. 공고 있으면 키워드 매칭 표 (있음/약함/없음).
4. 최근, 관련도 순 정렬. 프로젝트당 성과 3~5줄.
5. 템플릿 조판 + 질문 목록.

## 출력

```markdown
## 경력기술서 초안
## 공고 매칭 (공고 있을 때)
| 공고 키워드 | 근거 위치 | 강도 |
## 채워야 할 수치
- [수치?] 응답시간 개선 폭
```

## 규칙

- "담당", "참여", "다양한" 단독 금지. 행동 동사 + 결과.
- 팀 성과는 본인 역할 범위 명시 (리드|기여|단독).
- 회사 기밀 수치는 비율, 범위로 바꾸기 제안.
- 사진, 나이, 가족 등 직무 무관 개인정보 넣지 않기 권장.

## 완성

프로젝트별 성과 문장, 역할 범위, `[수치?]` 목록, 공고 매칭(있을 때)

## 형제

career-cover-letter / career-interview / doc-weekly / edit-proofread
