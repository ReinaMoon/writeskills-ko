---
name: wiki-activate
description: >
 위키로 질의, 재투입, 학습, 연결. 채널 분기, 위키 밖 차단, 근거 표기.
 트리거: 위키 활용, 질의, 위키로 글쓰기, 재투입, 위키 근거, 원소스 멀티유즈.
 wiki-ingest 저장, wiki-audit 점검.
---

# wiki-activate

위키→답변, 채널 입력, 학습물, 연결.

## 코어 참조

필수 handoff 2종. `core-ref-diet.md`. 예시 `examples/reuse-to-blog.md`

## 입력

위키(O), 모드 A|B|C|D, B채널 book|lecture|blog|essay|social|content, 밖지식 금지(선택).

## 모드

A 질의+근거. B 채널 초안(`reuse-pipelines.md`). C 표, 퀴즈. D 링크, 글감. `activation-patterns.md`

## 워크플로

`0→1모드→2읽기→3실행→4검증→5후속`

- 플랫폼 전용 라우팅 금지
- B: L1 유지 L3 채널화
- next: write-* / book-* / lecture-*

```markdown
## 체인 상태
- pipeline: wiki
- skill: wiki-activate
- mode: A|B|C|D
- status: done|partial
- next: write-blog | write-content | book-* | lecture-*
- suggested_next: write-blog
- reason: 위키 근거로 검색형 포스트
- handoff: {초안|근거}
```

## 규칙

위키 밖 수치 금지. 팀 위키→`doc-confluence`.

## 완성

모드, 채널, 근거, 검증, 체인.

## 형제

`wiki-ingest`, `wiki-research`, `wiki-audit`, write/book/lecture-*
