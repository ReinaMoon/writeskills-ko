---
name: write-content
description: >
 채널 미정 단편 글 5단계. 칼럼형/문서형.
 트리거: 글쓰기, 칼럼, 기고, 뉴스레터, 아티클, 보도자료, 글 써줘.
 블로그 write-blog, 에세이 write-essay, 피드 write-social, 보고 research-report.
---

# write-content

채널 미정 평문. 포털 SEO 제외.

## 코어 참조

필수:
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`
- `../../00-core/style/tone-matrix.md`

선택: `korean-prose-rules`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`
예시: `examples/column-skeleton.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 주제, 원문 | O | 3문장+ 보존 모드 |
| 목적, 독자, 유형 | O | |
| 채널, 분량 | 선택 | 기본 범용, 유형 기본값 |

필수 비면 1질문. 추측 금지.

## 유형

칼럼 1.5~2.5k / 문서 2~4k / 뉴스레터 0.8~1.5k / 분석 4~6k / 보도 0.8~1.2k (자).
미지정: 관점→칼럼, 정리→문서. 슬롯 `templates/structure-slots.md`

## 워크플로

1→2→3→4→5 (G0~G4). 주제만/아웃라인/초안별 진입. 기본 Step 확인.

1. 목적, 독자, 유형 확정.
2. 슬롯 아웃라인. 보존이면 원문 순서 (G1).
3. 문단 역할. 금지어 점검 (G2).
4. 구조→문장→스타일→형식. 점검 표 (`output-rules`) (G3).
5. 제목, `final.md` (G4).

모드: 키워드=신규, 원문3+=보존(사실 추가 금지), "새로 써줘"=해제. L1~L3 `writing-principles`.

## 출력

S1 요약 / S2 슬롯 요지 / S3~5 본문 / S4 점검 표(구조, 문장, 스타일, 형식).

## 규칙

- 칼럼 마무리 관점 재정렬. 문서 결론 3문장+행동 1.
- 리스트+해설 각 1문장.
- 합니다체 통일. 포털 SEO 금지.

## 완성 조건

- [ ] 목적, 유형 반영
- [ ] 슬롯 유지
- [ ] 금지어, 어미
- [ ] 제목 합의
- [ ] 보존 시 입력 밖 없음

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 블로그 | `write-blog` |
| 에세이 | `write-essay` |
| 피드 | `write-social` |
| 보고 | `research-report` |
| 책 | `book-writing` |
