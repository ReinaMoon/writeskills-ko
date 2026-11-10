---
name: doc-weekly
description: >
 한 주 메모 → 4블록 주간 보고. 한 일, 할 일, 이슈, 특이. 시제 구분.
 트리거: 주간 보고, 위클리, 금주 보고, weekly report. 회의 doc-meeting, 1:1 doc-1on1.
---

# doc-weekly

주간 경량 보고. 슬롯 고정 반복.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`
예시: `examples/messy-to-weekly.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 업무 메모 | O | 불릿 OK |
| 기간 | 권장 | 없으면 이번 주 확인 |
| 수치, 이슈 | 선택 | 없으면 이슈 "없음" |

## 워크플로

1. 완료/계획/이슈 분류. 진행은 `N%` 또는 할 일.
2. 4블록. 할 일 우선순위 정렬.
3. 명사형 통일, 점검.

템플릿: `references/weekly-template.md`

## 출력

§1 한 일, §2 할 일, §3 이슈, §4 특이(없으면 생략). 상세 `references/weekly-template.md`.

## 규칙

- 계획만은 한 일 금지.
- 입력 밖 수치 금지.
- 블록 순서 고정.

## 완성 조건

- [ ] 시제 분리
- [ ] 이슈 비면 "없음"
- [ ] 어미 통일

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 회의 결정 | `doc-meeting` |
| 1:1 | `doc-1on1` |
| 프로젝트북 | `doc-project-book` |
