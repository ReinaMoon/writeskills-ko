---
name: write-social
description: >
 플랫폼 중립 피드 롱폼. 훅, 유형, 반응 장치 5단계. 알고리즘, 시간표 제외.
 트리거: 롱폼, 훅, 피드 글, 소셜 포스트, 댓글 유도, LinkedIn, Threads.
 평문 write-content, 블로그 write-blog, 에세이 write-essay.
---

# write-social

첫 화면 정지, 이어 읽기, 반응 이유 남기기.

## 코어 참조

필수:
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`
- `../../00-core/style/tone-matrix.md`

선택: `korean-prose-rules`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/hooks-and-antipatterns.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 주제 | O | |
| 핵심 메시지 1문장 | O | |
| 글 유형 | O | `post-types` 7종 |
| 반응 목표 | 권장 | 공감/댓글/저장/전문성 |
| 훅 후보 | 선택 | 없으면 Step1에서 3개 |
| 종결어미 | 선택 | 유형 기본값 |
| 타깃 피드 | 선택 | 표시만 |

## 워크플로

1 훅 → 2 유형 구조 → 3 초안 → 4 리라이팅 → 5 발행 정리

1. 유형, 반응, 훅 3개 (`hook-patterns.md`) (G0).
2. 유형 블록 + 접힘 전 3줄/100~120자 (`post-types.md`) (G1).
3. 슬롯 순 고정. 접힘 전 갈등, 질문, 실용 선언. 행간 가독 (G2).
4. 훅→구조→문장→반응→안티패턴 (`anti-patterns.md`) (G3).
5. 접힘 마커 제거, 해시 3~5 선택, `social-final.md` (G4).

## 접힘 전

| 규칙 | 내용 |
|------|------|
| 1문장 | 완결 의미 |
| 2문장 | 긴장 |
| 3문장 | 방향 |
| 실용형 | 1~2문장 선언 |

초안 `── 접힘 ──` 마커. 최종 삭제.

## 출력

Step 1: 주제, 메시지, 유형, 훅.
Step 3: 접힘 전 2~4문장, 본문, 마무리(질문/선택/실물).
Step 5: 유형, 접힘, 어미, 반응 장치, 마커, 해시 체크.

## 규칙

- SNS 알고리즘, 발행 시간 문구 금지.
- 접힘 전 개념만. UI 버튼명 강요 금지.
- 1줄 카피만 목표면 본 스킬 아님.
- 시선 단상은 `write-essay`.
- 유형 톤 (`post-types`). `mystyle` 우선.

## 완성 조건

- [ ] 접힘 전 단독으로 방향 전달
- [ ] 유형 슬롯 유지
- [ ] 반응 장치 1개+ 또는 생략 사유
- [ ] 금지어, "오늘은" 없음
- [ ] 알고리즘 종속 없음
- [ ] 첫 줄 확정

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 칼럼, 문서 | `write-content` |
| 검색 블로그 | `write-blog` |
| 에세이, 단상 | `write-essay` |
| 썸네일 | `image-content` |
