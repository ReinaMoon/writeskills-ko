---
name: novel-writing
description: >
 소설 본문을 씬 단위로 쓴다. 설계 키트, 파일럿, (선택) 보이스 규약을 반영해 챕터를 이어 붙인다.
 트리거: 소설 집필, 씬 작성, 장면, 소설 챕터, 파일럿 챕터, 대화문. 기획은 novel-planning,
 문체는 novel-voice, 연속성은 novel-continuity, 퇴고는 book-editing(소설 모드)을 쓴다.
---

# novel-writing

씬, 챕터 집필. 퇴고: book-editing 소설 모드.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`

선택: `tone-matrix`, `quality-gates`, `handoff-schema`. 상세: `../../00-core/routing/core-ref-diet.md`

## 입력

인계|키트(O). `style-guide.md` 최우선. 범위, 이어쓰기 끝 2~3문단.

## 워크플로

1. 키트(말투 필수) > 2. 파일럿 ch1 > 3. 앵커|voice > 4. 씬 1.5~2k > 5. 점검 > continuity|editing

가이드 없을 때: Show, 감각 2+, 금지 부사, 작가설명, 느낌표 남발.

자가 점검: 말투, 금지, 7축.  
끝나면 story-bible 갱신 TODO (`novel-continuity/references/story-bible.md`).

## 체인

```markdown
## 체인 상태
- pipeline: novel
- skill: novel-writing
- status: done | partial
- next: novel-continuity | novel-voice | book-editing
- suggested_next: novel-continuity
- reason: 모순 점검 후 퇴고
- handoff: draft-ch{NN}.md
```

예시: `examples/scene-draft-short.md`

산출: `design-kit.md`, `draft-ch{NN}.md`

## 규칙

요청마다 시점, 어미, 톤 재기재. 설정 덤프 금지. **참조 작가 문장 금지.**

## 완성

범위, 점검, 가이드 충돌 없음, bible TODO, 체인

## 형제

novel-planning / novel-voice / novel-continuity / book-editing
