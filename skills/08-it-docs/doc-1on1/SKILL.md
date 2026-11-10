---
name: doc-1on1
description: >
 1:1, 코칭을 안건, 피드백, 합의 액션, 팔로업 노트로 정리. 평가문 아님. 민감 발언은 합의 없이 팀 채널 금지 표시.
 트리거: 1:1, 원온원, 코칭 노트, 면담 정리, 1on1, one on one.
 회의록 doc-meeting, 주간 doc-weekly.
---

# doc-1on1

1:1 다음 행동 기록. 민감도, 보관 범위 우선.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/coaching-note.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 대화 메모, 안건 | O | 키워드 허용 |
| 참여자 | O | 매니저, 멤버 역할 |
| 기간, 날짜 | 권장 | |
| 지난 1:1 액션 | 선택 | 팔로업용 |
| 공개 범위 | 선택 | private / manager-shared / team-safe |

범위 없으면 `private` 가정. 민감 항목 `🔒`.

## 워크플로

1. 범위 확인. 인사, 보상, 제3자 평가 기본 private.
2. 멤버/매니저/공동 안건 묶기.
3. 관찰, 피드백과 합의 액션 분리.
4. 팔로업 표. 담당, 기한, 다음 점검. 없으면 `TBD`.
5. 템플릿 출력. 민감 라벨 점검.

템플릿: `references/one-on-one-template.md`

## 출력

`references/one-on-one-template.md` 구조. 요지:

- 헤더: 날짜, 멤버/매니저, 공개 범위
- 1 안건 (멤버/매니저)
- 2 핵심 요약
- 3 피드백 표
- 4 합의 액션 표
- 5 성장, 커리어 (해당 시)
- 6 팔로업

## 규칙

- 평가, 등급 입력 없으면 비움.
- 제3자 비난, 추측 금지. 행동, 영향만.
- 미합의 숙제는 액션 금지. 2 또는 6에 남김.
- private면 `doc-confluence` 바로 전환 금지.
- 합니다체 또는 명사형 통일.

## 완성 조건

- [ ] 공개 범위 명시
- [ ] 피드백, 합의 액션 분리
- [ ] 액션 담당, 기한 또는 `TBD`
- [ ] 입력 밖 평가, 약속 없음
- [ ] 민감 라벨 점검

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 다수 참석 회의 | `doc-meeting` |
| 주간 업무 | `doc-weekly` |
| 팀 공개 페이지 | `doc-confluence` (team-safe만) |
