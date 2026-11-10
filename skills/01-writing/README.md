# 01-writing: 단편, 블로그, 에세이, 소셜

블로그·칼럼·에세이·피드 글을 쓰는 사람을 위한 스킬 4개입니다.  
IT 실무자가 기술 글을 쓸 때도, 일상/관찰 글을 쓸 때도 씁니다. 공유 규칙은 `../00-core/`.

첫 세션에는 `mystyle-gate`로 문체 슬롯을 한 번 확인합니다.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [write-content](./write-content/SKILL.md) | 채널 미정 단편(칼럼, 뉴스레터, 평문) | 어디에 올릴지 없거나 여러 곳에 붙여 쓸 때 | `examples/column-skeleton.md` |
| [write-blog](./write-blog/SKILL.md) | 검색/목차형 블로그 | 튜토리얼, 가이드, 회고, 딥다이브 | `examples/seo-outline-sample.md` |
| [write-essay](./write-essay/SKILL.md) | 시선 중심 1인칭 에세이 | 관찰, 공명, 산문 | `examples/essay-vs-content.md` |
| [write-social](./write-social/SKILL.md) | 피드 롱폼(훅, 반응) | LinkedIn/Threads 등 긴 포스트 | `examples/hooks-and-antipatterns.md` |

기술 블로그 분류: [`write-blog/references/category-tags.md`](./write-blog/references/category-tags.md)  
코드글 패턴: [`write-blog/references/dev-article-patterns.md`](./write-blog/references/dev-article-patterns.md)  
비평만: [`../00-core/output/critique-only.md`](../00-core/output/critique-only.md)  
시리즈: [`../00-core/handoff/series-schema.md`](../00-core/handoff/series-schema.md)

## 고르는 기준

| 상황 | 선택 |
|------|------|
| 채널 미정, 평문 | `write-content` |
| 검색, H2 목차, 내부링크 | `write-blog` |
| 시선, 장면, 여운 | `write-essay` |
| 피드 훅, 접힘 전 반응 | `write-social` |

네 스킬을 Claude에서 **동시에 전부 ON** 하지 않는 것을 권장합니다. `../00-core/routing/trigger-map.md`.

## 체인

```
단편/칼럼: write-content | write-essay | write-social
블로그:    (research-topic?) → write-blog → (image-content?)
```

## 코어 참조 (공통)

- `../00-core/style/mystyle.template.md` / `mystyle-gate.md`
- `../00-core/style/tone-matrix.md`
- `../00-core/principles/korean-prose-rules.md` / `writing-principles.md`
- `../00-core/output/output-rules.md` / `quality-gates.md`
- `../00-core/routing/trigger-map.md` / `core-ref-diet.md`

## 이 카테고리 범위 밖

- 특정 포털 전용 SEO/큐레이션
- CMS 클릭 절차
- SNS 알고리즘, 발행 시간대 종속 절차
