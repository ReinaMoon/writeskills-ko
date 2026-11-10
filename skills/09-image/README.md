# 09-image: 이미지 프롬프트 (보조)

블로그 썸네일, 강의 도해, 책 표지용 **프롬프트 MD** 2스킬입니다.  
벤더 UI 클릭 절차는 넣지 않습니다. 특정인 테마/팔레트를 기본값으로 두지 않습니다.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [image-book](./image-book/SKILL.md) | 표지, 챕터 삽화 (시리즈 일관성) | 기술서/소설 시각 | `examples/series-consistency.md` |
| [image-content](./image-content/SKILL.md) | 썸네일/OG, 인포 | 블로그, 강의, 소셜 카드 | `examples/prompt-rubric.md` |

브랜드 HEX가 있으면 그걸 쓰고, 없을 때만 중립 팔레트를 제안합니다.

## 체인 위치

```
기술 블로그: … → write-blog → (image-content?)
강의:        … → lecture-review → (image-content?)
책:          … → book-citation → (image-book?)
```

## 이 카테고리 범위 밖

- Midjourney/DALL-E 등 벤더 UI 절차
- CMS 업로드, CDN, 이미지 SEO 플러그인
