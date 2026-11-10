# 08-it-docs: IT 실무 문서

개발팀, 플랫폼팀, SRE가 쓰는 문서 스킬 **12개**입니다.  
단발 / 수명주기 / 설계, 릴리스 / 장애 문서를 나눕니다.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [doc-meeting](./doc-meeting/SKILL.md) | 결정, 액션 회의록 | 회의 직후 | `examples/messy-to-minutes.md` |
| [doc-1on1](./doc-1on1/SKILL.md) | 1:1/코칭 노트 | 주간 1:1 | `examples/coaching-note.md` |
| [doc-weekly](./doc-weekly/SKILL.md) | 주간 4블록 | 반복 위클리 | `examples/messy-to-weekly.md` |
| [doc-runbook](./doc-runbook/SKILL.md) | 전제, 절차, 검증, 롤백 | 장애/배포 | `examples/deploy-rollback.md` |
| [doc-project-book](./doc-project-book/SKILL.md) | 목적, 결정로그, 리스크 | 킥오프~운영 | `examples/project-book-snippet.md` |
| [doc-confluence](./doc-confluence/SKILL.md) | 팀 위키형 페이지 | How-to / Decision | `examples/howto-vs-decision.md` |
| [doc-adr](./doc-adr/SKILL.md) | 아키텍처 결정 기록 | 결정 고정 | `examples/sample-adr.md` |
| [doc-rfc](./doc-rfc/SKILL.md) | RFC / 디자인 독 | 합의 전 제안 | `examples/sample-rfc-outline.md` |
| [doc-api](./doc-api/SKILL.md) | API 설명 MD | 엔드포인트 문서 | `examples/sample-endpoint.md` |
| [doc-changelog](./doc-changelog/SKILL.md) | 릴리스 노트 | 버전 기록 | `examples/sample-changelog.md` |
| [doc-postmortem](./doc-postmortem/SKILL.md) | 비난 없는 장애 회고 | 장애 복구 후 | `examples/sample-postmortem.md` |
| [doc-pr](./doc-pr/SKILL.md) | PR 설명, 커밋, 리뷰 코멘트 | 코드 올릴 때 | `examples/sample-pr.md` |

## 체인

```
단발:       doc-meeting | doc-1on1 | doc-weekly
수명주기:   doc-project-book ⇄ doc-confluence ⇄ doc-runbook
설계문서:   doc-rfc → doc-adr
릴리스:     doc-pr → doc-api ⇄ doc-changelog
장애:       doc-postmortem → doc-runbook (+ doc-adr)
```

`doc-postmortem`은 사람 이름을 원인 주어로 쓰지 않는 비난 없는(blameless) 형식입니다. 5 Whys와 예방, 감지, 완화 3분류 액션 표가 기본입니다.  
`doc-pr`은 diff를 넣으면 PR 본문, conventional commit 메시지, `[필수]/[제안]/[질문]/[사소]` 라벨이 붙은 리뷰 코멘트를 만듭니다.  
평소 남긴 주간보고, 프로젝트북, 포스트모템은 `../11-career/career-resume`의 원자료로 그대로 쓸 수 있습니다.

회의 결정 → 프로젝트북 결정 로그 또는 ADR. 런북/허브는 링크만 유지.

## 이 카테고리 범위 밖

- 업무 메일, 월간 모니터링 보고 (보류)
- Jira/Slack API 등 도구 종속 자동화
