---
name: doc-project-book
description: >
 목적, 범위, 결정 로그, 리스크, 일정, 인터페이스 단일 프로젝트북. 킥오프~운영 기준 문서.
 트리거: 프로젝트북, 핸드북, 킥오프, 결정 로그, ADR, project book.
 런북 doc-runbook, 위키 doc-confluence, 회의 결정 doc-meeting.
---

# doc-project-book

신규 합류자가 맥락, 결정, 경계, 연락처를 한번에 파악.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/project-book-snippet.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 프로젝트명, 한 줄 목적 | O | |
| 범위 In/Out | 권장 | |
| 이해관계자 | 권장 | |
| 기존 노트, 티켓 | 선택 | |
| 일정, 마일스톤 | 선택 | |
| 인터페이스 | 선택 | API, 큐, 데이터 |
| 모드 | 선택 | create / update |

모드 없으면 목차형이면 create, "§N 갱신"이면 update.

## 워크플로

1. 주 독자, 모드 확인.
2. 필수 절 목차. 빈 입력 `TBD`.
3. 사실만. 추측은 `가정:` 접두.
4. 결정 로그: 날짜, 결정, 근거, 상태. ADR 링크.
5. 런북, 대시보드, 저장소 링크 허브.
6. 출력, 완성 점검.

템플릿: `references/project-book-template.md`

## 출력

필수 10절: 목적, 범위, 이해관계자, 아키텍처, 결정 로그, 리스크, 일정, 운영 링크, 커뮤, 부록.
작은 프로젝트는 §4, §8 축약 가능. 절 삭제는 사용자 동의 후.

상세: `references/project-book-template.md`

## 규칙

- 절차 상세는 런북 링크. 여기 요약만.
- 로그 없는 암묵지 단정 금지. 로그 추가 또는 `TBD`.
- 시크릿, 프로덕션 접속 정보 금지.
- update: 변경 절, 갱신일, 상단 변경 요약 1줄.
- 합니다체 또는 명사형 통일.

## 완성 조건

- [ ] 목적, 범위, 소유 또는 `TBD`
- [ ] 결정 로그 또는 "아직 없음"
- [ ] 런북, 위키 역할 중복 없음
- [ ] 시크릿 없음
- [ ] 최종 갱신일

## 체인

```markdown
## 체인 상태
- pipeline: it-docs
- skill: doc-project-book
- status: done
- next: doc-runbook | doc-adr | doc-confluence
- suggested_next: doc-runbook
- reason: 운영 절차를 런북으로 분리
```

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 운영 절차 | `doc-runbook` |
| ADR | `doc-adr` |
| 스페이스 초안 | `doc-confluence` |
| 회의 결정 반영 | `doc-meeting` → 결정 로그 |
| LLM 위키 | `wiki-ingest` |
