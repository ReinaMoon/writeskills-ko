---
name: doc-confluence
description: >
 팀 스페이스용 구조화 페이지(Confluence, Notion, 사내 위키). 계층, 요약, 본문, 링크 고정.
 트리거: Confluence, 컨플, 팀 위키, 스페이스 문서, Notion 팀 페이지.
 개인 위키 wiki-*, 핸드북 doc-project-book, 런북 doc-runbook.
---

# doc-confluence

팀 페이지 MD 초안. 도구 무관, 계층, 요약, 본문, 링크 규약.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/howto-vs-decision.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 목적, 제목 | O | |
| 독자 | 권장 | 온보딩, 온콜, PM 등 |
| 부모, 공간 | 권장 | 계층 |
| 본문 재료 | 권장 | 메모, MD, 프로젝트북 절 |
| 라벨 | 선택 | |
| 관련 링크 | 선택 | 런북, 이슈, 대시보드 |

개인 지식 그래프 목적이면 `wiki-*` 안내.

## 워크플로

1. 유형 1개: how-to / reference / 결정 / 허브.
2. 메타: 제목, 요약 2~4문장, 라벨, 소유, 갱신일.
3. 유형별 본문 골격. 상단 요약 필수.
4. children, related 목록.
5. 시크릿, 상대경로, 중복 허브 점검.
6. MD 출력 (+ 선택 frontmatter).

템플릿: `references/confluence-page-template.md`

## 출력

frontmatter: title, summary, labels, owner, parent, status, updated, skill.
본문: 요약 인용문, 대상, 전제, 본문, 관련 링크, 하위, 형제, 변경 이력 표.
유형별 본문: `references/confluence-page-template.md`

## 규칙

- 한 페이지 한 목적. 런북 전문 붙여넣기 금지, 링크.
- 요약에 결론, 사용 시점. 배경 장문 금지.
- 벤더 매크로 의존 금지. 표, 코드, 불릿. 매크로 요청 시 주석.
- 팀 페이지는 status, owner, labels면 충분.
- 합니다체 또는 명사형 통일.

## 완성 조건

- [ ] 요약이 본문 앞
- [ ] 유형 1개
- [ ] 소유, 갱신일 또는 `TBD`
- [ ] 런북, 프로젝트북 역할 중복 없음
- [ ] 시크릿 없음

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 프로젝트 핸드북 | `doc-project-book` |
| 운영 절차 | `doc-runbook` |
| 개인 위키 | `wiki-research` → `wiki-ingest` |
| 회의 반영 | `doc-meeting` |
