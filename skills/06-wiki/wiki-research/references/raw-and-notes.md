# raw, R_ 노트 규약

wiki-research 수집, 정리 단계용. 페이지 스키마 정본은 `../../../00-core/handoff/wiki-page-schema.md`.

---

## 1. raw frontmatter

```yaml
---
raw_type: collect # collect | mirror
source: "https://..."
captured: YYYY-MM-DD
published: YYYY-MM-DD # 있으면
grade: A | B | C
context: "수집 이유 + 연결 주제"
---
```

- `collect`: 조사로 가져온 원문. `mirror`: 인용 직전 대조용 사본.
- 본문은 원문 보존. 요약, 의역 금지.
- 동일 `source`가 있으면 신규 저장하지 않고 기존 경로를 알린다.

---

## 2. 출처 등급 (요약)

| 등급 | 예 | 사용 |
|------|----|------|
| A | 공공통계, 정부, 국제기구, 동료심사 | 수치 단정 |
| B | 민간 리서치, 학계, 산업 인정 | 수치 단정 |
| C | 언론, IR, 블로그, SNS | 참고, 교차확인 |

표기: `(출처: 기관, 연도, 등급: A/B/C, 조사일: YYYY-MM-DD)`

---

## 3. R_ 노트 골격

```markdown
# R_{주제}

## 개요
## 핵심 내용
## 주요 수치
## 시사점
## 출처
- [[raw_...]] 또는 경로, 등급
```

분량 가이드(deep): 3,000~5,000자. 근거 없는 서술로 채우지 않는다.

선택 frontmatter: `expires_at`, `sources: [...]`.

---

## 4. 선별 기준 (위키 후보)

다음 중 2개 이상일 때만 ingest 후보:

1. 반복 인용 가능성
2. 판단, 설계에 영향
3. 책, 강의, 글 작업과 직접 연결

정리에 과도한 비용이 들면 보류하고 목록만 남긴다.
