---
name: book-planning
description: >
 실용서 아이디어를 독자, 콘셉트, 목차로 설계하고 출판 기획서와 후속용 인계 문서를 남긴다.
 주제가 막연하면 탐색부터, 확정이면 콘셉트, 목차부터 시작한다. 트리거: 책 기획, 책 아이디어,
 목차 설계, 출판 기획서, 책 콘셉트, 타깃 독자, 실용서 기획. 자료 조사는 book-research,
 집필은 book-writing, 소설 기획은 novel-planning을 쓴다.
---

# book-planning

집필 전 설계. 본문 금지. `00-handoff.md` + 기획서.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/handoff/handoff-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `research-card-schema`, `mystyle-gate`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

## 입력

키워드, 경험(O). 용도, 어미는 5~6단계. 공백 시 질문 1회.

## 워크플로

1 아이디어 > 2 독자, 시장 > 3 콘셉트 > 4 목차 > 5 기획서 > 6 인계

단계 확인. 압축 시 최소 확인, 6 생략 금지.

1. 후보 3~5, 임의 확정 금지
2. 독자, 유사서 차별, 무근거 `[확인 필요]`
3. `[독자+관점+변화]` 2~3안, 쓰지 않을 것
4. 챕터 논점, 판단 소제목, 연결
5. `templates/publishing-proposal.md`
6. book 슬롯 0~6, 공백 `[미정]`, 재번호 금지

압축: 주제, 콘셉트, 용도, 어미만 확인.

## 체인

```markdown
## 체인 상태
- pipeline: book
- skill: book-planning
- status: done | blocked | partial
- next: book-research | book-writing
- handoff: 00-handoff.md
```

인계 비펼침. `templates/handoff-checklist.md`

## 규칙

1~4 메모 톤, 5 공식. 소제목 기능 나열 금지. 시장 단정 금지.

## 완성

승인, 기획서, 슬롯 0~4, 챕터 번호 2자리, 체인

## 형제

research / writing / novel-planning
