---
name: image-content
description: >
 블로그, 강의 썸네일(OG), 인포 프롬프트. 벤더 중립 한국어 블록.
 트리거: 썸네일, OG, 블로그 커버, 인포, 슬라이드 도해, 강의 시각화.
 책 image-book.
---

# image-content

thumbnail|infographic|both. CMS 미종속. MD 기본.

## 코어 참조

필수 output+runtime. `core-ref-diet.md`. 예시 `examples/prompt-rubric.md`

## 입력

모드(O), 원고(O), 채널, 비율(기본16:9) 선택.

## 워크플로

**G0** 메시지, 키워드, 톤, 수치신호.

**thumbnail**: `thumbnail-types.md` A~D, 팔레트4, 텍스트 T1~5, 프롬프트 **2안**.

**infographic**: `infographic-layouts.md`, **4섹션**(한글텍스트, 디자인사양, 렌더가드 분리). 최대3안.

```markdown
## 체인 상태
- skill: image-content | mode: thumbnail|infographic|both
- handoff: IC_{slug}_{YYYYMMDD}.md | runtime: none|image-tool
```

## 규칙

픽셀, 벤더 지시어 기본 강제 금지. px, 폰트명 이미지 렌더 금지. 인포 6항↑ 2장 제안.

## 완성

모드, 프롬프트, 텍스트분리, 체인.

## 형제

`image-book`, `write-blog`, `lecture-slides`, `bizplan-pitch`
