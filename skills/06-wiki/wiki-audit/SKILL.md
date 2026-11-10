---
name: wiki-audit
description: >
 중복, 충돌, 신선도, 구조, 스키마 점검. 병합, 삭제 승인 후만.
 트리거: 위키 점검, 감사, 충돌, 중복, 신선도, 깨진 링크, 고아, 헬스체크.
 wiki-ingest, wiki-activate.
---

# wiki-audit

정합성, 신선도. L1 신뢰 보호.

## 코어 참조

필수 handoff 2종. `core-ref-diet.md`. 예시 `examples/conflict-cases.md`

## 입력

위키(O), 범위 전체|군|ingest인계, 소스폴더(신선도시).

## 5군

중복 / 충돌 / 신선도 / 구조(링크, MOC, 고아) / 스키마. `references/audit-checks.md`

## 워크플로

`0→1모드→2스캔→3관찰(조치금지)→4심각도→5리포트`

병합, 삭제 승인 필수. `audit-actions.md`. 충돌 단정 금지.

```markdown
## 체인 상태
- pipeline: wiki | skill: wiki-audit | status: done|partial|blocked
- next: wiki-ingest|wiki-activate|none | handoff: audit-report_{YYYYMMDD}.md
```

## 규칙

experience→concept 흡수 금지. 삭제 전 역링크. 리포트 발견만.

## 완성

범위, 5군, 승인분리, 체인.

## 형제

`wiki-research`, `wiki-ingest`, `wiki-activate`
