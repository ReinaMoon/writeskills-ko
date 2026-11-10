---
name: research-topic
description: >
 주제 조사 → 참조 노트. 기본/딥/배치. 트리거: 리서치 노트, 딥, 배치, 메가, 트렌드, 비교.
 강의 lecture-research, 보고서 research-report.
---

# research-topic

범용 참조 노트. 스키마: 코어 `profile: topic`.

## 코어 참조

필수:
- `../../00-core/handoff/research-card-schema.md`
- `../../00-core/principles/writing-principles.md`

선택: `output-rules`, `vault-obsidian`, `plain-folder`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/batch-failure-modes.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 주제 | O | 추측 확정 금지 |
| 모드 | 자동 | 기본 / 딥 / 배치 |
| 관점, 용도 | 선택 | |
| 저장 위치 | 선택 | 기본 대화, 요청 시 파일 |

| 모드 | 신호 | 산출 |
|------|------|------|
| 기본 | 기본값 | 노트 1, 소스 3~5 |
| 딥 | 딥, 상세 | 노트 1, 소스 10+, 교차검증 |
| 배치 | 메가, 배치, N개 | 마스터 1 + 서브 N. `references/batch-mode.md` |

강의, 교안 → `lecture-research`.

## 절차

1. 모드 확정.
2. 기본/딥: 조사(등급 A/B/C) → 슬롯 채움 → `RL_`/`R_` 저장. `references/note-template.md`
3. 배치: 서브 목록 제안 → 사용자 확정(유일한 게이트) → 마스터 → 서브 순차. `references/batch-mode.md`
4. 실패 분기: `examples/batch-failure-modes.md`

## 출력

```markdown
## 체인 상태
- pipeline: research
- skill: research-topic
- mode: {기본|딥}
- status: done
- next: research-report | write-blog | none
- suggested_next: research-report
- reason: 제출용 보고서로 정리 (글감이면 write-blog)
```

## 규칙

- C급 단독으로 핵심 주장 금지.
- 제출용 5절 보고서면 `research-report`.

## 완성

- [ ] 모드 명시
- [ ] 슬롯, 출처 등급
- [ ] 배치면 마스터 서브 수 일치
- [ ] 체인 상태

## 형제

| 상황 | 스킬 |
|------|------|
| 제출 보고서 | `research-report` |
| 강의 소재 | `lecture-research` |
| 책 챕터 카드 | `book-research` |
| 위키 raw | `wiki-research` |
