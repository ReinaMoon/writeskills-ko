---
name: write-blog
description: >
 검색, H2/H3 목차형 기술 블로그. IT/소프트웨어 개발자용 튜토리얼, 가이드, 회고 5단계.
  CMS 종속 절차 제외. 트리거: 블로그, 기술 블로그, 가이드, 튜토리얼, SEO, H2, 발행.
 미정 write-content, 에세이 write-essay, 피드 write-social.
---

# write-blog

검색, 목차형 기술 블로그. 독자 기본값: 소프트웨어 개발자, 엔지니어. CMS, 포털 UI 범위 밖.

## 코어 참조

필수:
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`
- `../../00-core/style/tone-matrix.md`

선택: `korean-prose-rules`, `quality-gates`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/seo-outline-sample.md`, `examples/canary-rollback-bug.md`
검색: `references/generic-seo.md`
분류: `references/category-tags.md` (IT 기본 분류. 사용자 체계가 있으면 그쪽 우선)
코드글: `references/dev-article-patterns.md`
시리즈: `../../00-core/handoff/series-schema.md`
비평만: `../../00-core/output/critique-only.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 주제 | O | |
| 앵글 | O | 검색과 다른 기준 1줄 |
| 독자, 검색 의도 | O | |
| 글 유형 | O | 방법론/가이드/리뷰/코드글(BUG·BUILD·BENCH·MIG·LESSON) |
| 핵심, 보조 KW | 권장 | 핵심1+보조2~3 |
| 카테고리, 시리즈 | 선택 | 없으면 `category-tags.md` |
| 관련 글 | 선택 | 내부 링크 |

필수 비면 주제, 앵글, 독자부터 1문항씩.

## 워크플로

1 주제, 앵글 → 2 H2/H3 → 3 초안 → 4 리라이팅 → 5 발행 메타

1. 주제, 앵글, KW, 분류 확정. 코드글이면 `dev-article-patterns.md` 유형 확정 (G0).
2. H2/H3 아웃라인, 제목 5개, 내부 링크 (`post-structure.md`) (G1). 리뷰만 요청이면 critique-only 후 중단.
3. 1,200~2,500자(±20%). 코드글은 스니펫 ≤20줄, before/after (G2).
4. 도입, 구조, 문장, 스타일, SEO 5영역 점검 (G3).
5. 메타, 태그(`category-tags.md`), 시리즈 필드, 이미지 (`publish-meta.md`), `blog-final.md` (G4).

## 도입, 마무리

도입 3~4문장: 현상→판단 / 질문→반론 / 선언→설명 / 상황 중 택1.
금지: "오늘은", 사전 정의 시작, "최근 화제".
마무리: 본론 반복 금지. 기준 압축 + 다음 판단 1개.

## 출력

Step 1: 주제, 앵글, 독자, 유형, KW.
Step 2: 제목 후보, `##`/`###` 아웃라인, 링크 후보.
Step 5: 제목, 메타 150자, 태그 2~4, 대표 이미지 콘셉트.

```markdown
## 체인 상태
- pipeline: blog
- skill: write-blog
- status: done | partial
- next: edit-de-ai | image-content | research-topic | none
- suggested_next: image-content
- reason: 썸네일/OG (AI 초안이면 edit-de-ai 먼저)
```

## 규칙

- 일반 검색 원칙만. 포털 알고리즘, 스마트블록 등 금지.
- 소제목 명사 나열 금지.
- 내부 링크 문맥 맞을 때만.
- 합니다체. `mystyle` 우선.
- WP, 네이버 UI 절차 본문 금지.

## 완성 조건

- [ ] 검색 의도가 도입에 반영
- [ ] H2/H3만으로 골격 파악
- [ ] 핵심 KW 제목, H2 자연 포함
- [ ] 금지어, 어미 통일
- [ ] 메타, 태그 또는 `TBD`
- [ ] 포털 전용 SEO 없음

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 채널 미정 | `write-content` |
| 에세이 | `write-essay` |
| 피드 롱폼 | `write-social` |
| 주제 조사 | `research-topic` |
| 썸네일 | `image-content` |
| AI 말투 정리 | `edit-de-ai` |
| PR/장애 글 원자료 | `doc-pr`, `doc-postmortem` |
