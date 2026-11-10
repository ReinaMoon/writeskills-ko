---
name: wiki-ingest
description: >
 리서치, 메모, 웹→concept/experience 위키 페이지. frontmatter, MOC, 링크.
 트리거: 위키 만들기, 구축, 페이지 생성, 저장, 위키화, 인제스트, 개념, 경험 페이지.
 활용 wiki-activate, 점검 wiki-audit.
---

# wiki-ingest

소스→**concept|experience** 컴파일. 스키마 `wiki-page-schema.md`.

## 코어 참조

필수 handoff 2종. 선택 `core-ref-diet.md`.

## 입력

위키 폴더(O), 소스 읽기전용(O), 단일|배치. 폴더 지침 우선.

## 유형

concept: 정의, 수치, 출처. experience: 상황, 결과, 1인칭 원칙. **혼합 분리**.

## 워크플로

`0→1범위→2청크→3생성→4검증→5저장`

- 등록 `references/ingest-patterns.md`
- 필수 `type`,`sources`,`updated`
- 검증: 소스 일치, 중복, 충돌→`wiki-audit`
- MOC, 명확 쌍만 `[[ ]]`

```markdown
## 체인 상태
- pipeline: wiki | skill: wiki-ingest | status: done|partial
- next: wiki-activate|wiki-audit | handoff: {페이지}
```

## 규칙

1페이지 1주제. 전문 복사 금지. write/lecture/book 오발동 주의.

## 완성

유형, 스키마, 검증, 인덱싱, 체인.

## 형제

`wiki-research`, `wiki-activate`, `wiki-audit`, `doc-confluence`
