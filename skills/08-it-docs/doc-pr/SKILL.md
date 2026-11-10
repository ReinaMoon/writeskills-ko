---
name: doc-pr
description: >
 PR 설명, 커밋 메시지, 코드 리뷰 코멘트. diff나 변경 메모에서 왜/무엇/검증/위험을 뽑는다.
 트리거: PR 설명, 풀리퀘 설명, MR 설명, 커밋 메시지, conventional commits, 리뷰 코멘트, 코드리뷰 문장.
 릴리스 노트는 doc-changelog, 설계 결정은 doc-adr.
---

# doc-pr

diff에 없는 동작 단정 금지. 리뷰어 시간을 아끼는 순서로.

## 코어 참조

필수: `korean-prose-rules`, `quality-gates`  
선택 → `../../00-core/routing/core-ref-diet.md`  
레퍼런스: `references/pr-commit-guide.md`  
예시: `examples/sample-pr.md`

## 입력

diff 또는 변경 메모(필수), 이슈/티켓(권장), 팀 PR 템플릿(있으면 우선), 언어(국문|영문).

## 모드

| 모드 | 신호 | 산출 |
|------|------|------|
| pr | 기본값 | PR 제목 + 본문 |
| commit | 커밋 메시지 | conventional commit 1~N개 |
| review | 리뷰 코멘트 | 코멘트 문장 다듬기 (라벨 + 이유 + 제안) |

## 워크플로

1. diff에서 변경 단위 분류: 기능, 버그, 리팩터, 설정, 테스트.
2. 왜(문제) → 무엇(변경 요약) → 어떻게 검증 → 위험/롤백.
3. 리뷰어가 먼저 볼 파일 순서 제안.
4. 크면 분할 제안 (기준: 400줄, 서로 무관한 변경).
5. 커밋 모드: `type(scope): 요약` 50자 안팎, 본문에 왜.

## 출력

```markdown
## 제목
## 왜
## 무엇이 바뀌나
## 검증
## 위험, 롤백
## 리뷰 순서
```

## 규칙

- "여러 개선", "리팩터링" 단독 제목 금지.
- 스크린샷/로그 자리는 `[첨부]`로 표시, 지어내지 않음.
- 리뷰 코멘트는 사람 아닌 코드 대상. 질문형 또는 제안형.
- 시크릿, 내부 URL 노출 점검.

## 완성

왜/무엇/검증/위험 4절, 제목 구체, 분할 판단

## 형제

doc-changelog / doc-adr / doc-postmortem / write-blog(dev-article-patterns)
