---
name: novel-continuity
description: >
 소설 원고와 story-bible를 대조해 인물 지식, 소품, 시간축, 연도·나이, 복선 회수,
 설정 모순만 점검한다. 기본적으로 원고를 고치지 않는다(critique). 트리거: 연속성,
 모순, continuity, 설정 충돌, story bible, 타임라인, 복선, 떡밥, 회수, foreshadowing,
 나이, 연도. 집필 novel-writing, 퇴고 book-editing(소설), 보이스 novel-voice.
---

# novel-continuity

모순 점검. 기본 `critique` (`../../00-core/output/critique-only.md`).

## 코어 참조

필수:
- `../../00-core/output/critique-only.md`
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/output/quality-gates.md`

선택: `chain-status`, `series-schema`. 상세: `../../00-core/routing/core-ref-diet.md`

스키마: `references/story-bible.md`  
예시: `examples/contradiction-report.md`, `examples/foreshadowing-report.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 최근 씬/챕터 | O | N개 또는 범위 |
| story-bible | 권장 | characters/timeline/facts/foreshadowing |
| 모드 | 자동 | critique (기본) |

bible 없으면 원고만으로 표 초안을 제안한 뒤 확정 게이트 1회.

## 워크플로

1. bible 로드. 없으면 템플릿 제안 → 사용자 확인.
2. 축 점검: 인물 지식, 소품 위치, 시간/거리, 연도·나이·경과 대조, 고유명, 약속(예언/규칙), 복선 회수 상태.
3. 모순 목록 High/Mid/Low. 자동 개작 금지.
4. bible 갱신 TODO 목록.
5. 체인 상태.

## 출력

```markdown
## 체인 상태
- pipeline: novel
- skill: novel-continuity
- mode: critique
- status: done | partial
- next: novel-writing | book-editing | none
- suggested_next: book-editing
- reason: 모순 정리 후 소설 퇴고
- handoff: continuity-report.md
```

## 규칙

- 문체 취향 비평은 `book-feedback` / voice.
- 모순이 아니면 Low 취향으로 내리지 말 것.
- series면 `series-schema` 회차 이월 확인.
- 복선은 모순이 아니다. 미회수를 모순으로 올리지 말고 회수 상태(심음/회수 예정/의도적 열림/회수 완료)로 보고.
- 판단은 사용자가 준 원고 범위 안에서만. 범위 밖 회수 여부는 "확인 불가"로 표시.
- 복선 추가 제안은 원고 속 근거와 후보 위치만. 새 설정이나 사건을 지어내지 말 것.

## 완성

- [ ] 축 6종 이상 스캔 (연도·나이 대조, 복선 포함)
- [ ] High에 위치 인용
- [ ] 미회수 복선은 모순이 아니라 추적 상태로 분류
- [ ] 자동 수정 없음
- [ ] bible TODO 또는 “변경 없음”

## 형제

novel-writing / novel-planning / novel-voice / book-editing
