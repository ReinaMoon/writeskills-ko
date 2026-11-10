---
name: image-book
description: >
 책 표지, 챕터 삽화 프롬프트. 장르, 키비주얼, 시리즈, 벤더 중립 6블록.
 트리거: 표지, 북커버, 표지 프롬프트, 챕터, 본문 삽화, 라인, 삽화 일관성.
 블로그, 강의 image-content.
---

# image-book

cover|illustration|both. 프롬프트 MD 기본.

## 코어 참조

필수 `output-rules`, `runtime-files`. `core-ref-diet.md`. 예시 `examples/series-consistency.md`

## 입력

모드(O), 원고, 기획, cover:제목, 부제, illustration:챕터범위, style-bible(선택).

## 워크플로

**G0** 장르, 메시지, 톤, 키워드.

**cover**: `genre-and-prompt.md`→콘셉트2~3→6블록(역할, 분위기, HEX, 구도, 스타일, 출력).

**illustration**: 챕터분석→라인|인포→`illustration-compose.md`→배치표.

both, 시리즈 `style-bible.md`. 생성 사용자 도구.

```markdown
## 체인 상태
- skill: image-book | mode: cover|illustration|both
- handoff: IB_{slug}_{YYYYMMDD}.md | runtime: none|image-tool
```

## 규칙

제품, API 기본값 금지. 한글 표지 포함|후편집 명시. 원고 밖 상징 금지.

## 완성

모드, 6블록 또는 배치표, style-bible, 체인.

## 형제

`image-content`, `book-writing`, `novel-writing`
