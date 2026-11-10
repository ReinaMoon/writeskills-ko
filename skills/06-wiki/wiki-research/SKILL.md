---
name: wiki-research
description: >
 위키 원천 조사. 원문 보존, 출처 등급, 인용 전 대조. 트리거: 위키 리서치, 위키용 조사,
 원문 보존 리서치, 출처 검증, 위키 소스 수집, 1차 출처 대조. 일반 조사는 research-topic.
---

# wiki-research

위키 검증 원천. 구조 탐색 `research-topic`, 위키 신뢰 원문 본 스킬.

## 코어 참조

필수: `handoff/wiki-page-schema.md`, `handoff/pipeline-convention.md`
선택: `core-ref-diet.md` (`../../00-core/routing/`)

## 입력

대주제(O), 위키 폴더(권장), raw, R_ 저장(선택), 깊이 deep|basic.

폴더 운영 지침 **폴더 스키마 우선**.

## vs research-topic

원문 raw 보존, 인용 직전 대조, 목적 위키 원천 품질.

## 워크플로

`0 주제, 폴더 → 1 raw → 2 R_ → 3 ingest 후보만 → 4 검증 → 5 인계`

1. **raw**: 원문 MD, 요약 금지. 메타 `source`, `grade` A/B/C. `raw_{제목}.md` → `references/raw-and-notes.md`
2. **R_**: 슬롯 개요/핵심/수치/시사점/출처, `sources`→raw. 선택 `expires_at`
3. 일반화 개념만 표시. 생성 `wiki-ingest`(요청 시)
4. A/B 단정, C 참고, 무근거 금지
5. R_, 후보, raw 경로, 체인 블록

```markdown
## 체인 상태
- pipeline: wiki | skill: wiki-research | mode: deep|basic
- status: done|partial | next: wiki-ingest | handoff: raw/ + R_*.md
```

## 규칙

raw L1. C급 핵심 주장 금지. 코어 principles. 노트앱, 스크립트 필수 의존 금지.

## 완성

주제, 저장, raw+R_, 검증, 체인 상태.

## 형제

`wiki-ingest`, `research-topic`, `wiki-audit`
