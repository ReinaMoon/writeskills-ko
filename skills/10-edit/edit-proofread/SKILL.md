---
name: edit-proofread
description: >
 한국어 교정. 맞춤법, 띄어쓰기, 번역투, 외래어 표기, 용어 통일. 변경 목록 + 교정본.
 트리거: 맞춤법, 띄어쓰기, 교정, 교열, 번역투, 문법 검사, 오타, 용어 통일.
 AI 말투는 edit-de-ai, 구조 퇴고는 book-editing.
---

# edit-proofread

문장 의미, 구조 유지. 표기와 어법만.

## 코어 참조

필수: `../../00-core/principles/korean-prose-rules.md`  
레퍼런스: `references/common-errors.md`, `references/translationese.md`  
예시: `examples/proofread-sample.md`

## 입력

원문(필수), 용어집(선택), 기준(표준어 기본 | 팀 표기 우선), 코드 블록 보존 여부(기본 보존).

## 워크플로

1. 코드, URL, 인용문, 고유명사 보호 표시.
2. 맞춤법, 띄어쓰기 (`common-errors.md`).
3. 번역투 (`translationese.md`). 의미가 바뀌면 제안만.
4. 용어 통일. 처음 쓴 표기 기준, 용어집 있으면 우선.
5. 변경 목록 + 교정본.

## 출력

```markdown
## 변경 (N건)
| 유형 | 원문 | 교정 | 근거 |
## 교정본
## 판단 보류
```

유형: 맞춤법 | 띄어쓰기 | 번역투 | 표기 | 용어

## 규칙

- 코드, 명령어, 식별자 변경 금지.
- 애매하면 `판단 보류`로, 단정 금지.
- 문체(어미) 변경은 요청 시만.

## 완성

보호 구간 불변, 변경 목록 완비, 보류 분리

## 형제

edit-de-ai / book-editing / doc-changelog
