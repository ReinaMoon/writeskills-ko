---
name: doc-changelog
description: >
 릴리스 노트/changelog. Breaking, Features, Fixes, Migration.
 트리거: changelog, 릴리스 노트, release notes, 버전 기록.
 런북 doc-runbook, API doc-api.
---

# doc-changelog

버전 단위 변경 목록. 동사 선행, 구체적.

## 코어 참조

필수: `korean-prose-rules`, `quality-gates`  
템플릿: `references/changelog-template.md`  
예시: `examples/sample-changelog.md`

## 입력

버전(O), 날짜, 커밋/PR/이슈 메모, Breaking 여부.

## 워크플로

1. 버전 헤더 + 한 줄 요약.
2. Breaking(있으면 굵게) → Features → Improvements → Fixes → Migration.
3. 각 bullet: 동사 시작, 재현/영향 범위.
4. 체인 상태.

## 출력

```markdown
## 체인 상태
- pipeline: it-docs
- skill: doc-changelog
- suggested_next: doc-api
- reason: Breaking API면 문서 갱신
```

## 규칙

- “개선했습니다” 남발 금지. 무엇/왜.
- 내부 티켓만 있고 사용자 영향 없으면 Improvements로 짧게.

## 형제

doc-api / doc-runbook / doc-weekly
