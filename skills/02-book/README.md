# 02-book: 실용서, 기술서

실용서·기술서를 쓰는 사람을 위한 파이프라인 6개입니다.  
IT 실무자가 기술서를 쓸 때, 일반 실무서를 쓸 때 모두 해당합니다.  
기획 → 참조 카드 → 챕터 → 퇴고 → 피드백 → 인용.

소설 퇴고는 `book-editing` **소설 모드** (`../03-novel` 연계).

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [book-planning](./book-planning/SKILL.md) | 독자, 콘셉트, 목차, 인계 | 기술서/실무서 뼈대 | |
| [book-research](./book-research/SKILL.md) | 챕터 참조 카드 | 근거, 사례, API/수치 | `examples/filled-card-a.md` |
| [book-writing](./book-writing/SKILL.md) | 챕터 초안 | 인계+카드 이후 본문 | |
| [book-editing](./book-editing/SKILL.md) | 구조→문장→교정 (+소설 모드) | 초안 다듬기 | `examples/scene-checklist-filled.md` |
| [book-feedback](./book-feedback/SKILL.md) | 독자/편집 시선 피드백 | 베타, 투고 전 | `examples/persona-cards.md` |
| [book-citation](./book-citation/SKILL.md) | 인용, 참고문헌 | 출처 정리 | `examples/style-samples.md` |

## 체인

```
book-planning → book-research → book-writing
  → book-editing → book-feedback → book-citation → (image-book?)
```

인계: `../00-core/handoff/pipeline-convention.md`, `handoff-schema.md`.

## 코어 참조 (공통)

- `../00-core/handoff/*`
- `../00-core/style/mystyle-gate.md` / `tone-matrix.md`
- `../00-core/principles/writing-principles.md` / `korean-prose-rules.md`
- `../00-core/output/quality-gates.md`

## 이 카테고리 범위 밖

- 출판사 계약서, 특정 서점 SEO
- 전자책 조판 엔진 종속 절차
