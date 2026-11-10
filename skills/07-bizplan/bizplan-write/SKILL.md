---
name: bizplan-write
description: >
 일반 사업계획 MD 본문. docx 요청 시만. 특정 공모 양식 미지원.
 트리거: 사업계획서, BP 본문, 투자, 내부 사업계획.
 bizplan-research, bizplan-pitch.
---

# bizplan-write

MD 기준 BP. hwpx 범위 밖.

## 코어 참조

필수 bizplan 3종. `core-ref-diet.md`.

## 입력

`bizplan_input`/`BR`(권장), meta, 목적(O). JSON 매핑 또는 인터뷰.

## 절(고정)

요약→problem→solution→market→model→gtm→competition→team→financials→milestones→출처

`templates/bp-outline.md`, `section-guide.md`

## 워크플로

입력스캔→절별 초안(출처유지)→요약 재작성→점검(missing, 금지어)→docx 선택

문체: 개조+짧은 서술, 합니다|~함 고정. 절 400~800자.

`BP_{사업}_{YYYYMMDD}.md`

```markdown
## 체인 상태
- pipeline: bizplan | skill: bizplan-write | status: done|partial
- next: bizplan-pitch | handoff: BP_*.md | runtime: none|docx
```

## 규칙

카드 밖 수치 `[미정]`. 피치→`bizplan-pitch`.

## 완성

절순서, 출처, MD, 체인.

## 형제

`bizplan-research`, `bizplan-pitch`, `research-report`
