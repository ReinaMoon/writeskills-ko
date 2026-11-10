---
name: research-report
description: >
 5절 제출 보고서. MD 기준, docx 요청 시. 트리거: 조사 보고서, 시장, 기술 분석.
 topic, write-content.
---

# research-report

**MD 5절 = 기준.** docx 선택. 예시: `examples/sample-report.md`

## 코어 참조

필수: `research-card-schema`, `writing-principles`
선택 → `../../00-core/routing/core-ref-diet.md`

## 입력

주제, 목적, 범위(O), 노트, 질문(선택). 한 번에 질문, 추측 금지.

## 워크플로

②배경→③발견→④시사점→①요약(마지막)→⑤출처. 발견 3~5. 없는 시사점 금지.

분량: 요약300~500, 배경/시사500~1k, 발견1~2k. `templates/report-template.md`

`RR_{주제}_{YYYYMMDD}.md`. docx 명시 시만.

## 출력

```markdown
## 체인 상태
- skill: research-report | runtime: none|docx
- handoff: RR_{주제}_{YYYYMMDD}.md
```

## 규칙, 완성

절 고정. `(기관, 연도)`. doc-meeting/doc-weekly 아님.
완성: 입력, 5절, 수치 출처, MD 원본, 체인.

## 형제

research-topic / lecture-plan / write-content
