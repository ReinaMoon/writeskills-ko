# WriteSkills 설치 가이드 (Claude 위주)

IT 실무자와 블로그, 소설을 쓰고 싶은 사람을 위한 한국어 스킬 **47개** + `00-core`를 Claude에 올리는 방법입니다.  
**클릭(UI)**, **Windows PowerShell**, **macOS/Linux 터미널** 을 구분해 적습니다.  
ChatGPT: [`install-guide-chatgpt.md`](./install-guide-chatgpt.md).

- 스킬 목록: [`../skills/README.md`](../skills/README.md)
- 트리거 선택표: [`../skills/00-core/routing/trigger-map.md`](../skills/00-core/routing/trigger-map.md)
- ChatGPT: [`install-guide-chatgpt.md`](./install-guide-chatgpt.md)
- 영어 원고를 다룰 때: [`writing-in-english.md`](./writing-in-english.md)

---

## 0. 먼저 알 것

1. **의존성 없음.** npm/pip 설치가 필요 없습니다. Markdown 폴더입니다.
2. **저장소 전체 ≠ 한꺼번에 ON.** git에는 47개가 다 있어도, Claude에서는 스타터 팩만큼만 켜는 것이 안전합니다.
3. **writing 4개 동시 ON은 권장하지 않음 (금지는 아님).**  
   Claude가 description 트리거로 스킬을 고르기 때문에, 비슷한 글쓰기 스킬을 모두 켜 두면 모호한 요청에서 잘못 붙을 수 있습니다.  
   → 저장소에서 지우라는 뜻이 아닙니다. **토글만 조절**하면 됩니다.
4. **`00-core`는 항상 같이.** 원칙, 스키마, 문체 게이트가 여기 있습니다.

공식 Claude Skills 도움말(업로드 UI는 제품 업데이트로 메뉴명이 조금 달라질 수 있음):

- [Use skills in Claude](https://support.claude.com/en/articles/12512180-use-skills-in-claude)
- [Create custom skills](https://claude.com/docs/skills/how-to)

---

## 1. 사전 준비 (클릭)

### Free / Pro / Max / Ultra

1. [claude.ai](https://claude.ai) 로그인
2. **Settings → Capabilities** (또는 새 레이아웃의 동일 항목)
3. **Code execution and file creation** / **Create and edit files** 를 **켜기**
4. **Customize → Skills** 로 이동해 Skills 화면이 열리는지 확인

### Team / Enterprise

1. Owner: **Organization settings → Plugins & skills → Policy**
2. **Code execution and file creation**, **Skills** 둘 다 허용
3. 구성원: **Customize → Skills** 에서 개인 스킬 업로드, 토글

Skills가 안 보이면 플랜/조직 정책과 code execution 설정을 먼저 확인합니다.

---

## 2. 저장소 받기

### 클릭

1. GitHub 저장소 페이지 → **Code → Download ZIP**
2. 압축 해제

### 명령어

```bash
git clone https://github.com/ReinaMoon/writeskills-ko.git
cd writeskills-ko
```

저장소 주소는 [github.com/ReinaMoon/writeskills-ko](https://github.com/ReinaMoon/writeskills-ko)입니다. (작성자: [ReinaMoon](https://github.com/ReinaMoon))

---

## 3. 어떤 스킬을 올릴까 (스타터 팩)

각 팩 = **`00-core` + 아래 스킬**. 처음에는 하나만 고르세요.

| 팩 | 스킬 | 용도 |
|----|------|------|
| **A** IT 단발 | `doc-meeting`, `doc-1on1`, `doc-weekly` | 회의, 1:1, 주간 |
| **B** IT 수명주기 | `doc-project-book`, `doc-runbook`, `doc-confluence`, `doc-adr`, `doc-postmortem`, `doc-pr` (+선택 A) | 프로젝트북, 런북, 팀 위키, ADR, 장애 회고, PR |
| **C** 기술 블로그/단편 | `write-blog` **또는** `write-content` (+선택 `research-topic`, `image-content`) | 검색형 기술 포스트 / 채널 미정 칼럼 |
| **D** 에세이/소셜 | `write-essay` **또는** `write-social` | 시선 산문 / 피드 롱폼 |
| **E** 실용서 | `book-planning` … `book-citation` (+선택 `image-book`) | 논픽션 체인 |
| **F** 소설 | `novel-planning`, `novel-voice`, `novel-writing`, `novel-continuity`, `book-editing` | 기획→보이스→씬→연속성→퇴고 |
| **G** 강의 | `lecture-plan` … `lecture-review` (+선택 `image-content`) | 기획→덱 QA |
| **H** 조사 | `research-topic`, `research-report` | 노트→제출 보고서 |
| **I** 위키 | `wiki-research` … `wiki-audit` | LLM 위키 |
| **J** 사업계획 | `bizplan-research`, `bizplan-write`, `bizplan-pitch` | 일반 BP, 피치 |
| **K** 위키→블로그 | `wiki-research`…`wiki-activate` + `write-blog` | 위키 재사용 글 |
| **L** 커리어 | `career-resume`, `career-cover-letter`, `career-interview` (+권장 M) | 이력서, 자소서, 면접 |
| **M** 다듬기 | `edit-de-ai`, `edit-proofread` | AI 말투 제거, 맞춤법, 번역투. 다른 팩에 얹어 쓰기 좋음 |

입문 추천: **M**(가장 범용), **A**, **C**, **F**, **L**.

### 폴더 11개는 설치 단위가 아닙니다

탐색기에서 `skills`를 열면 `00-core`부터 `11-career`까지 폴더가 보입니다.  
이 폴더는 **분류**입니다. Claude에 올리는 단위는 그 안의 **스킬 폴더 하나 = zip 하나**입니다.  
`03-novel`을 통째로 zip 해서 올리면 인식되지 않습니다.

| 보이는 폴더 | 올릴 zip (스킬 이름) | 해당하는 팩 |
|-------------|----------------------|-------------|
| `00-core` | 올리지 않음. 패키징할 때 각 zip 안에 들어감 | 전체 |
| `01-writing` | `write-content`, `write-blog`, `write-essay`, `write-social` | C, D |
| `02-book` | `book-planning`, `book-research`, `book-writing`, `book-editing`, `book-feedback`, `book-citation` | E. 소설 퇴고는 `book-editing`만 |
| `03-novel` | `novel-planning`, `novel-voice`, `novel-writing`, `novel-continuity` | F |
| `04-lecture` | `lecture-plan`, `lecture-research`, `lecture-blueprint`, `lecture-slides`, `lecture-review` | G |
| `05-research` | `research-topic`, `research-report` | H |
| `06-wiki` | `wiki-research`, `wiki-ingest`, `wiki-activate`, `wiki-audit` | I, K |
| `07-bizplan` | `bizplan-research`, `bizplan-write`, `bizplan-pitch` | J |
| `08-it-docs` | `doc-meeting` … `doc-pr` (12개) | A, B |
| `09-image` | `image-book`, `image-content` | 선택 |
| `10-edit` | `edit-de-ai`, `edit-proofread` | M |
| `11-career` | `career-resume`, `career-cover-letter`, `career-interview` | L |

소설을 쓰려면 **F**입니다. `03-novel` 4개에 더해, 퇴고 스킬 `book-editing`은 `02-book`에 있으므로 같이 올립니다.

### 소설(F) Windows에서 설치

1. 저장소 루트 폴더(README.md가 있는 곳)에서 PowerShell을 엽니다. 폴더 빈 곳에서 Shift+우클릭 → "PowerShell 창 여기서 열기"를 고르면 됩니다.
2. PowerShell 창 안에서 아래 두 줄을 입력합니다. 이미 PowerShell 안이므로 앞에 `powershell`을 붙이지 않습니다. 첫 줄은 이번 창에서만 스크립트 실행을 허용합니다.

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\scripts\package-all-starter.ps1
```

소설만 만들려면:

```powershell
.\scripts\package-skill.ps1 .\skills\03-novel\novel-planning
.\scripts\package-skill.ps1 .\skills\03-novel\novel-voice
.\scripts\package-skill.ps1 .\skills\03-novel\novel-writing
.\scripts\package-skill.ps1 .\skills\03-novel\novel-continuity
.\scripts\package-skill.ps1 .\skills\02-book\book-editing
```

> `'powershell' 용어가 인식되지 않습니다` 오류가 나면 `powershell` 명령을 쓰지 말고, 위처럼 `.\scripts\...` 경로로 바로 실행하세요. PowerShell 7(`pwsh`)을 쓰는 중이어도 같은 방식으로 됩니다.

3. `dist` 폴더에 zip 5개가 생깁니다. `starter-F.manifest.txt`에 파일 이름이 적혀 있습니다.
4. Claude.ai → **Customize → Skills → + → Upload a skill** 에서 zip을 **하나씩** 올립니다.
5. 5개 모두 **Turn on**.

탐색기 "압축"으로 폴더를 직접 zip 하면 `00-core` 연결이 빠지고, 폴더 안에서 압축하면 `SKILL.md`가 zip 맨 위에 와서 실패합니다. Windows에서는 위 스크립트를 쓰세요.

### writing 4개에 대해

| 하고 싶은 일 | 권장 |
|--------------|------|
| 블로그만 | `write-blog`만 ON |
| 칼럼인데 채널 미정 | `write-content`만 ON |
| 에세이 | `write-essay`만 ON |
| 링크드인/스레드 롱폼 | `write-social`만 ON |
| 가끔 여러 장르 | 저장소에 두고, 쓸 때만 해당 스킬 토글 ON |

네 파일을 저장소에서 삭제할 필요는 없습니다.

---

## 4. 방법 A :  Claude.ai Agent Skills (zip 업로드, 클릭 위주)

스킬마다 **폴더 단위 zip**을 올립니다.  
ZIP 최상단이 `SKILL.md`가 아니라 **`스킬폴더/SKILL.md`** 여야 합니다.

### 4.1 왜 코어 복사가 필요한가

저장소 안에서는 `SKILL.md`가 `../../00-core/...`를 가리킵니다.  
zip 하나만 올리면 그 상대경로가 zip 밖으로 나가 **깨집니다.**

그래서 업로드용으로:

1. 스킬 폴더를 임시 복사
2. 필요한 `00-core` 파일을 `references/core/`에 복사
3. (선택이지만 권장) `SKILL.md`의 코어 경로를 `references/core/...`로 맞춤  
   또는 Project 방식(§5)을 쓰면 복사 없이 상대경로가 유지됩니다.

보조 스크립트:

| 환경 | 스킬 하나 | 팩 여러 개 (A, B, C, F, L, M) |
|------|-----------|-------------------------------|
| Windows | [`scripts/package-skill.ps1`](../scripts/package-skill.ps1) | [`scripts/package-all-starter.ps1`](../scripts/package-all-starter.ps1) |
| macOS, Linux, Git Bash | [`scripts/package-skill.sh`](../scripts/package-skill.sh) | [`scripts/package-all-starter.sh`](../scripts/package-all-starter.sh) |

업로드 전 검증(bash): [`scripts/validate-skill.sh`](../scripts/validate-skill.sh)

### 4.2 Windows에서 zip 만들기

저장소 루트(README.md가 있는 폴더)에서:

```powershell
.\scripts\package-skill.ps1 .\skills\08-it-docs\doc-weekly
# → dist\doc-weekly.zip

.\scripts\package-all-starter.ps1
# → dist\ 에 스킬 zip + starter-A.manifest.txt 등
```

스크립트가 하는 일: 스킬 폴더 복사, `SKILL.md`가 가리키는 `00-core` 파일을 `references/core/`에 넣기, zip 맨 위가 `스킬이름/SKILL.md`가 되게 압축.

### 4.2b macOS / Linux / Git Bash

```bash
bash scripts/validate-skill.sh skills/08-it-docs/doc-weekly
bash scripts/package-skill.sh skills/08-it-docs/doc-weekly
# → dist/doc-weekly.zip

bash scripts/package-all-starter.sh
```

수동 zip은 `00-core`가 빠집니다. Windows에서는 쓰지 말고 4.2 스크립트를 쓰세요. macOS/Linux에서 구조를 확인할 때만:

```bash
# 부모 폴더에서 "폴더 자체"를 zip (내용물만 zip하면 실패)
cd skills/08-it-docs
zip -r ../../dist/doc-weekly.zip doc-weekly
unzip -l ../../dist/doc-weekly.zip | head
# 모든 경로가 doc-weekly/ 로 시작하는지 확인
```

폴더 이름과 `SKILL.md`의 `name:` 필드를 맞춥니다.

### 4.3 클릭으로 업로드

1. **Customize → Skills**
2. **+** → **Create skill** → **Upload a skill**
3. `dist/doc-weekly.zip` 선택
4. 목록에 나타나면 **Turn on** (토글 ON)
5. 같은 방식으로 팩의 나머지 스킬도 업로드
6. `00-core`만 따로 “스킬”로 올리기 어렵습니다.  
   → zip 패키지에 코어를 넣었거나, §5 Project에 `00-core`를 함께 둡니다.

### 4.4 사용 (클릭 / 입력)

1. 새 채팅
2. 자연어: 예) `오늘 회의 메모 정리해서 액션만 남겨줘` + 메모 붙여넣기  
   또는 메시지창에 `/` 입력 → 스킬 이름 선택
3. 글쓰기 팩이면 첫 세션에 문체(`mystyle`) 안내가 나오면 짧게 답합니다

### 4.5 업로드 실패 시

| 증상 | 확인 |
|------|------|
| 인식 안 됨 | ZIP 안에 `이름/SKILL.md` 구조인지 (`unzip -l`) |
| 이름 오류 | 폴더명 = frontmatter `name` |
| 용량 | ZIP이 너무 크면 references 정리 |
| Skills 메뉴 없음 | code execution / 플랜 정책 |

---

## 5. 방법 B :  Claude Project (파일 적재, 상대경로 유지)

zip 패키징이 번거로우면 이 방법이 단순합니다.

### 클릭

1. Claude에서 **Project 만들기**
2. Project 이름 예: `WriteSkills-IT-단발`
3. **Project files**에 다음을 업로드  
   - `skills/00-core/` 전체  
   - 스타터 팩에 해당하는 각 스킬 폴더 (`SKILL.md`, `references/`, `examples/` 포함)
4. **Project instructions**에 아래를 붙여넣기:

```
이 Project는 WriteSkills 스타터 팩을 사용합니다.
00-core의 원칙, 스키마, trigger-map을 스킬 본문보다 우선합니다.
한 번에 하나의 스킬 단계만 수행하고, 끝나면 인계 블록을 남깁니다.
산출 기본은 마크다운입니다.
특정 포털 SEO, 특정 정부 공모 양식은 일반 구조로 안내합니다.
```

5. 해당 Project 채팅에서 자연어로 요청

체인(책, 강의 등)은 같은 Project에 단계 스킬을 모두 두고,  
“`00-handoff` 기준으로 다음 단계”라고 명시하면 이어가기 쉽습니다.

---

## 6. 방법 C :  Claude Code (로컬 폴더)

### 명령어

```bash
# 개인 스킬
mkdir -p ~/.claude/skills
cp -R skills/08-it-docs/doc-weekly ~/.claude/skills/
# 코어를 쓰는 스킬이면 저장소 전체를 워크스페이스로 열거나
# references/core 로 패키징한 폴더를 복사

# 또는 이 저장소를 프로젝트로 연 뒤
# .claude/skills/ 에 심볼릭 링크
mkdir -p .claude/skills
ln -s ../../skills/08-it-docs/doc-weekly .claude/skills/doc-weekly
```

Claude Code는 파일시스템 기반이라 zip 업로드와 별개입니다.  
공식: Claude Code Skills는 `~/.claude/skills/` 또는 프로젝트 `.claude/skills/`.

---

## 7. ChatGPT

→ [`install-guide-chatgpt.md`](./install-guide-chatgpt.md)

---

## 8. 올리기 직전 체크

- [ ] code execution (파일 생성) 켜짐
- [ ] 스타터 팩 하나(또는 Project 2개로 분리)만 활성
- [ ] writing이면 비슷한 4개를 전부 ON 하지 않음
- [ ] zip이면 `폴더/SKILL.md` 구조 + (가능하면) `references/core`
- [ ] Project면 `00-core` + 팩 스킬 파일이 들어 있음
- [ ] 포털/공모 전용이라고 광고하지 않음

---

## 9. 스모크 테스트 (10분)

| 팩 | 최소 프롬프트 | 합격 |
|----|---------------|------|
| A | 지저분한 회의 메모 붙여넣기 | 결정/액션 분리, 담당, 기한 또는 TBD |
| B | “캐시 계층 도입 ADR 초안” | Context/Decision/Consequences |
| C | “카나리 롤백 버그 포스트 목차” | 재현 조건, before/after, 스니펫 규칙 |
| F | “3챕터 모순 점검만” | critique-only, 대체 원고 없음 |
| L | 업무 메모 3줄 + “경력기술서로” | 성과 문장, 없는 수치는 `[수치?]` |
| M | AI가 쓴 블로그 도입부 + “AI 티 빼 줘” | 패턴 ID 진단표, 밀도 전후, 사실 추가 없음 |
| E | “실용서 인계 슬롯 0~2만” | 인계 헤더 유지 |
| G | “블루프린트 장 3개 메시지만” | 1장 1메시지 |
| J | “7분 Problem-First 12장 표만” | 12행 스토리보드 |

입출력 샘플: 각 스킬 `examples/`. 스모크 fixture: [`../evals/`](../evals/).

---

## 10. 영어 원고를 다룰 때

작성 언어가 영어여도 설치 단위(zip/Project)는 같습니다.  
안내는 한국어, 원고는 영어인 경우의 절차와 한계: [`writing-in-english.md`](./writing-in-english.md).  
소설 연속성: [`novel-continuity-english-manuscript.md`](./novel-continuity-english-manuscript.md).

영어 문법 교정기가 되지 않습니다. 지금 안내는 영어 소설 `novel-continuity` 연속성뿐이며, 기술 문서/블로그 품질은 여기서 다루지 않습니다.
