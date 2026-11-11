# novel-continuity: 영어 원고 안내

한국 사용자가 **영어 소설 원고**를 `novel-continuity`에 넣을 때의 순서입니다.  
스킬 ID와 한국어 정본(`SKILL.md`, `story-bible.md`)은 그대로입니다.

범위: 연속성/복선/연도/나이 대조만. 영어 문법 교정 없음. 기술 문서 품질은 다루지 않음.

스모크용 입력과 판정표: [`../evals/novel-continuity/`](../evals/novel-continuity/)

---

## 1. 준비할 파일

```
story-bible/
  characters.md
  timeline.md
  facts.md
  foreshadowing.md
manuscript/
  (제공 범위의 영어 씬/챕터만)
```

- 스키마 안내는 한국어: [`../skills/03-novel/novel-continuity/references/story-bible.md`](../skills/03-novel/novel-continuity/references/story-bible.md)
- 칸 내용(이름, 사건, 복선 문장)은 영어여도 된다
- 복선 상태를 영어로 적으면 별칭표를 본다: [`../skills/03-novel/novel-continuity/references/foreshadowing-status-aliases.md`](../skills/03-novel/novel-continuity/references/foreshadowing-status-aliases.md)

---

## 2. Claude

1. 팩 F 또는 `novel-continuity` zip을 올린다 ([`install-guide.md`](./install-guide.md))
2. Project를 쓰면 `00-core` + `novel-continuity` + bible + 영어 원고를 같은 Project에 둔다
3. 대화 예: “제공 범위는 ch1-ch3. critique만. 영어 문법은 보지 말고 연속성만.”
4. 산출: 한국어 모순/복선 표. 인용은 영어 원고 구절

---

## 3. ChatGPT

1. Custom GPT 또는 Project 하나 = continuity 전용 (또는 팩 F)
2. Instructions: [`install-guide-chatgpt.md`](./install-guide-chatgpt.md) 템플릿 + 아래 블록
3. Knowledge에 올릴 것:
   - `skills/00-core/output/critique-only.md`
   - `skills/00-core/handoff/chain-status.md` (또는 handoff 폴더)
   - `skills/03-novel/novel-continuity/SKILL.md`
   - `skills/03-novel/novel-continuity/references/story-bible.md`
   - `skills/03-novel/novel-continuity/references/foreshadowing-status-aliases.md`
   - 예시(선택): `examples/en-manuscript-continuity.md`
   - 사용자 bible + 영어 원고
4. 인계/bible 갱신은 붙여넣기 또는 재업로드

Instructions 추가 블록:

```
원고 언어가 영어여도 점검 규칙은 동일하다.
영어 맞춤법, 관사, 톤은 교정하지 않는다.
미회수 복선은 모순이 아니라 추적 상태다.
새 설정이나 사건을 지어내지 않는다.
모순 등급(High/Mid/Low)은 명확한 모순인지와 스토리 영향도로 나눈다.
판단은 사용자가 준 원고 범위 안에서만 한다.
```

이 가이드는 Instructions + Knowledge 적재를 기본으로 한다.  
Skills 메뉴가 있는 계정은 OpenAI 도움말을 보고, 같은 파일을 올리면 된다.  
메모: [`../skills/00-core/adapters/chatgpt-notes.md`](../skills/00-core/adapters/chatgpt-notes.md)

---

## 4. 기대 산출

- High/Mid/Low 모순 표 (자동 개작 없음)
- 복선 추적 표 (미회수 ≠ 오류)
- bible TODO 또는 “변경 없음”
- 체인 상태 블록

예시 형식: [`../skills/03-novel/novel-continuity/examples/en-manuscript-continuity.md`](../skills/03-novel/novel-continuity/examples/en-manuscript-continuity.md)

---

## 5. 결과 대조

[`../evals/novel-continuity/expect-checklist.md`](../evals/novel-continuity/expect-checklist.md)는 사람이 읽는 판정표다.
