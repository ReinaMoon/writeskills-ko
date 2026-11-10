---
name: doc-meeting
description: >
 회의 메모, 전사 → 결정, 액션 회의록. 개요, 결정, 액션, 논의 4블록. 담당, 기한 없으면 TBD.
 트리거: 회의록, 회의 정리, 미팅 정리, 전사 정리, 액션아이템. 주간 doc-weekly, 1:1 doc-1on1.
---

# doc-meeting

회의 후 실행 기록. 확정, 할 일, 미결 분리.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`
예시: `examples/messy-to-minutes.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 메모/전사 | O | 키워드 허용 |
| 회의명, 일시 | 권장 | 없으면 1문항 |
| 참석, 안건 | 권장/선택 | |

핵심 비면 한 질문만.

## 워크플로

1. 안건별 정리. 입력 밖 사실 금지.
2. 확정/액션/미결 분류.
3. 액션 담당, 기한. 없으면 `TBD`.
4. 4블록 출력, 점검.

템플릿: `references/meeting-template.md`

## 출력

4블록: 개요, 결정, 액션 표, 논의. 필드는 `references/meeting-template.md`.

## 규칙

- 확정 2절, 미결 4절.
- 추론, 임의 배정 금지.
- 합니다체 또는 명사형 통일.
- 블록 순서 고정.

## 완성 조건

- [ ] 결정에 미결 없음
- [ ] 액션 담당, 기한 또는 `TBD`
- [ ] 입력 밖 없음
- [ ] 금지어, 어미 통일

## 체인

```markdown
## 체인 상태
- pipeline: it-docs
- skill: doc-meeting
- status: done
- next: doc-project-book | doc-weekly | doc-adr | none
- suggested_next: doc-project-book
- reason: 결정을 기준 문서/로그에 반영
```

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 주간 보고 | `doc-weekly` |
| 1:1 | `doc-1on1` |
| 팀 위키 | `doc-confluence` |
| 위키 인제스트 | `wiki-ingest` |
