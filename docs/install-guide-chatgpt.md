# WriteSkills ChatGPT 적재 가이드 (초안)

Claude 설치가 기본이다. 이 문서는 Custom GPT / ChatGPT Project용 요약이다.  
상세 Claude 경로: [`install-guide.md`](./install-guide.md).  
주의: [`../skills/00-core/adapters/chatgpt-notes.md`](../skills/00-core/adapters/chatgpt-notes.md).

---

## 1. 원칙

1. **한 GPT = 한 스타터 팩** (예: IT 단발, 블로그, 소설).
2. Knowledge에 `00-core` + 해당 스킬 MD를 올린다.
3. 슬래시 자동 트리거가 없다. 단계가 바뀌면 사용자가 인계를 붙인다.
4. 산출 기본 = Markdown.

---

## 2. Custom GPT

| 위치 | 내용 |
|------|------|
| Instructions | 아래 템플릿 + 팩 목적 2~4문장 |
| Knowledge | `skills/00-core/` 전체, 팩 스킬 `SKILL.md` + references + examples |
| 대화 | 인계 MD 붙여넣기 |

### Instructions 템플릿

```
당신은 WriteSkills [팩 이름] 어시스턴트입니다.
00-core의 원칙, 스키마, trigger-map, critique-only, chain-status를 스킬 본문보다 우선합니다.
한 번에 하나의 스킬 단계만 수행하고, 끝나면 체인 상태 블록(suggested_next 포함)을 남깁니다.
사용자가 "리뷰만/비평만"이면 critique 모드로 대체 원고를 쓰지 않습니다.
산출 기본은 마크다운입니다.
특정 포털 SEO, 특정 정부 공모 양식은 일반 구조로만 안내합니다.
```

영어 소설 원고를 넣을 때 Instructions에 아래를 추가합니다.

```
원고 언어가 영어여도 점검 규칙은 동일하다.
영어 맞춤법, 관사, 톤은 교정하지 않는다.
미회수 복선은 모순이 아니라 추적 상태다.
새 설정이나 사건을 지어내지 않는다.
모순 등급(High/Mid/Low)은 명확한 모순인지와 스토리 영향도로 나눈다.
판단은 사용자가 준 원고 범위 안에서만 한다.
```

### 영어 소설 continuity Knowledge 목록

- `skills/00-core/output/critique-only.md`
- `skills/00-core/handoff/chain-status.md`
- `skills/03-novel/novel-continuity/SKILL.md`
- `skills/03-novel/novel-continuity/references/story-bible.md`
- `skills/03-novel/novel-continuity/references/foreshadowing-status-aliases.md`
- (선택) `skills/03-novel/novel-continuity/examples/en-manuscript-continuity.md`
- 사용자 story-bible + 영어 원고 (제공 범위 명시)

절차 상세: [`novel-continuity-english-manuscript.md`](./novel-continuity-english-manuscript.md).  
영어로 쓸 때 개요: [`writing-in-english.md`](./writing-in-english.md).

---

## 3. 권장 팩 → 올릴 스킬

| 팩 | Knowledge에 넣을 스킬 |
|----|----------------------|
| A IT 단발 | doc-meeting, doc-1on1, doc-weekly |
| B IT 수명주기 | doc-project-book, doc-runbook, doc-confluence, doc-adr, doc-postmortem, doc-pr |
| C 블로그 | write-blog (+ 선택 research-topic, image-content) |
| F 소설 | novel-planning, novel-voice, novel-writing, novel-continuity, book-editing |
| L 커리어 | career-resume, career-cover-letter, career-interview |
| M 다듬기 | edit-de-ai, edit-proofread (`00-core/principles/ai-tone-patterns.md` 필수) |

---

## 4. ChatGPT Project

1. 팩별로 Project 생성.
2. 파일을 폴더 구조 그대로 업로드.
3. 위키 체인: “이 Project 파일이 위키 루트”로 본다.

---

## 5. ChatGPT Skills 메뉴가 있는 경우

플랜과 워크스페이스에 따라 Skills 업로드 UI가 있을 수 있다.  
이 저장소 가이드의 **기본 경로**는 위 Custom GPT / Project의 Instructions + Knowledge다.  
Skills 메뉴를 쓰려면 OpenAI 쪽 현재 도움말을 따른다.

- https://help.openai.com/en/articles/20001066-skills-in-chatgpt
- https://learn.chatgpt.com/docs/build-skills

## 6. 아직 없는 것

- GPT 스토어 업로드 자동화
- Actions(외부 API) 연동
- 영문 locale 전체 패키지
- 영어 기술 문서 품질 검증 (이 안내 범위 밖)
