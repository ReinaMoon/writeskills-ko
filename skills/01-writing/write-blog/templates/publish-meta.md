# 기술 블로그 발행 메타

플랫폼 UI와 무관한 **원고 쪽 메타**만 채운다. CMS별 클릭 절차는 적지 않는다.  
카테고리/태그 기본표: `category-tags.md` (IT/소프트웨어 개발). 사용자/팀 체계가 있으면 그걸 쓴다.

## 메타 양식

```markdown
---
title: ""
date: YYYY-MM-DD
status: draft | review | final
skill: write-blog
slug: ""
primary_keyword: ""
secondary_keywords: []
category: []
tags: []
meta_description: ""
featured_image_concept: ""
series: ""
---
```

## 작성 기준

| 필드 | 기준 |
|------|------|
| title | 핵심 키워드 자연 포함, 50자 이내 권장, 판단이 드러나면 가점 |
| meta_description | 150자 이내. 검색 의도 답 + 키워드 1회 |
| tags | 2~4개. 팀/저장소 태그 체계 우선. 없으면 `category-tags.md` |
| featured_image_concept | 주제, 분위기 한 줄. 실제 생성은 `image-content` |
| series | 시리즈면 회차. 단독이면 비움 |

## 발행 전 체크

```
□ 제목 확정
□ H2/H3 → 목차 골격 확인
□ 메타설명
□ 태그 2~4
□ 내부 링크 [LINK] 해소 또는 TBD
□ 이미지 [IMAGE] 해소 또는 TBD
□ [TODO] 없음
□ 분량 1,200~2,500자 (±20%)
```

파일명: `blog-final.md` (`../../00-core/output/output-rules.md`)
