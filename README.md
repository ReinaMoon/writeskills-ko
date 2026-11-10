# WriteSkills

**한국어로 일하고 쓰는 사람을 위한 Claude Agent Skills 47개.**  
회의록부터 장애 회고, 기술 블로그, 이력서, 소설 연재까지. AI 티 안 나는 한국어로.

[![License: CC BY-SA 4.0](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](./LICENSE)
![Skills](https://img.shields.io/badge/skills-47-blue)
![Language](https://img.shields.io/badge/lang-한국어-red)
![Deps](https://img.shields.io/badge/dependencies-none-brightgreen)

> 설치 3분, 의존성 0. Markdown 폴더를 Claude에 올리면 끝입니다.  
> [설치 가이드](./docs/install-guide.md) | [ChatGPT](./docs/install-guide-chatgpt.md) | [Before/After 보기](./docs/showcase.md) | [전체 스킬](./skills/README.md)

---

## 이런 걸 합니다

**AI 초안을 사람 글로** (`edit-de-ai`)

```diff
- 오늘날 빠르게 변화하는 개발 환경에서, 효율적인 배포 전략은 그 어느 때보다 중요합니다.
- 이번 글에서는 카나리 배포가 무엇인지, 어떤 장점이 있는지 살펴보겠습니다.
+ 지난달 전체 배포 한 번에 결제 API 에러율이 8%까지 올랐고, 롤백에 40분이 걸렸습니다.
+ 그 뒤로 트래픽 5%에만 먼저 배포하는 카나리를 붙였습니다.
```

**업무 메모를 경력기술서로** (`career-resume`)

```diff
- 레디스 캐시 붙였고 쿼리 튜닝도 했음
+ 주문 목록 조회에 Redis 캐시 계층을 도입해 p95 응답시간을 820ms에서 140ms로 줄임 (단독 설계, 구현)
```

**채팅 로그를 비난 없는 장애 회고로** (`doc-postmortem`)

```diff
- 김OO가 실수로 배치 잘못 배포함
+ 배치 저장소에는 공통 CI 템플릿이 없어 실행 계획 검사가 적용되지 않았다.
```

더 많은 예: [docs/showcase.md](./docs/showcase.md)

---

## 왜 이 레포인가

| | WriteSkills | 흔한 프롬프트 모음 |
|--|-------------|--------------------|
| 언어 | 한국어 어법, 번역투, AI 말투 패턴 내장 | 영문 프롬프트 번역 |
| 범위 | 업무 문서 + 블로그 + 커리어 + 책 + 소설이 한 체인 | 장르별 단발 |
| 지어내기 | 없는 수치는 `[수치?]`, `[TODO-FACT]`로 묻는다 | 그럴듯하게 채움 |
| 비평 | "고치지 말고 문제만" 모드 (critique-only) | 항상 다시 써 줌 |
| 연결 | 스킬 끝마다 `suggested_next` 로 다음 단계 안내 | 없음 |
| 토큰 | SKILL.md는 짧게, 상세는 references로 분리 | 긴 시스템 프롬프트 |

---

## 누구를 위한가

| 당신이 | 먼저 켤 스킬 | 팩 |
|--------|--------------|----|
| 개발자, SRE, PM | `doc-meeting`, `doc-weekly`, `doc-postmortem`, `doc-pr` | A, B |
| 기술 블로그를 쓰는 사람 | `write-blog` + `edit-de-ai` | C |
| 이직, 취업 준비 | `career-resume`, `career-cover-letter`, `career-interview` | L |
| 소설, 연재를 쓰는 사람 | `novel-planning` → `novel-voice` → `novel-writing` → `novel-continuity` | F |
| AI 초안을 다듬고 싶은 누구나 | `edit-de-ai`, `edit-proofread` | M |
| 강의, 책, 사업계획 | `lecture-*`, `book-*`, `bizplan-*` | G, E, J |

---

## 빠른 시작 (Claude.ai)

Windows (PowerShell, 저장소 루트 폴더에서):

PowerShell 창 안에서 아래를 입력합니다. 이미 PowerShell이므로 앞에 `powershell`을 붙이지 않습니다.

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\scripts\package-skill.ps1 .\skills\10-edit\edit-de-ai
# → dist\edit-de-ai.zip
```

스타터 팩 전체(A, B, C, F, L, M)를 만들려면:

```powershell
.\scripts\package-all-starter.ps1
```

`'powershell' 용어가 인식되지 않습니다` 오류가 나면 `powershell` 명령을 쓰지 말고 `.\scripts\...` 경로로만 실행하세요.

macOS / Linux:

```bash
git clone https://github.com/ReinaMoon/writeskills-ko.git
cd WriteSkills
bash scripts/package-skill.sh skills/10-edit/edit-de-ai
# → dist/edit-de-ai.zip
```

1. Claude.ai > Customize > Skills > 업로드에 `dist/edit-de-ai.zip`
2. 대화창에 "이 글 AI 티 좀 빼 줘" + 원문 붙여넣기

팩 단위 일괄: `bash scripts/package-all-starter.sh`  
Project 방식, Claude Code 방식: [설치 가이드](./docs/install-guide.md)

---

## 카테고리

| 폴더 | 내용 | 수 |
|------|------|---:|
| [00-core](./skills/00-core/README.md) | 문체, 원칙, AI 말투 패턴, 인계, 라우팅 | 모듈 |
| [01-writing](./skills/01-writing/README.md) | 단편, 블로그, 에세이, 피드 | 4 |
| [02-book](./skills/02-book/README.md) | 실용서/기술서 | 6 |
| [03-novel](./skills/03-novel/README.md) | 소설, 연재형, 연속성 | 4 |
| [04-lecture](./skills/04-lecture/README.md) | 강의/워크숍 | 5 |
| [05-research](./skills/05-research/README.md) | 조사 | 2 |
| [06-wiki](./skills/06-wiki/README.md) | 지식 위키 | 4 |
| [07-bizplan](./skills/07-bizplan/README.md) | 사업계획 | 3 |
| [08-it-docs](./skills/08-it-docs/README.md) | 회의, 런북, ADR, RFC, API, changelog, 포스트모템, PR | 12 |
| [09-image](./skills/09-image/README.md) | 썸네일, 표지 프롬프트 | 2 |
| [10-edit](./skills/10-edit/README.md) | AI 말투 제거, 맞춤법, 번역투 | 2 |
| [11-career](./skills/11-career/README.md) | 이력서, 자기소개서, 면접 | 3 |

---

## 한 흐름으로 쓰기

```
평소 기록   doc-weekly, doc-project-book, doc-postmortem
   ↓
이직 준비   career-resume → career-cover-letter → career-interview
   ↓
외부 공유   write-blog (dev-article-patterns) → edit-de-ai → edit-proofread
```

스킬은 각자 쓸 수 있고, 이어 쓰면 앞 단계 산출물이 다음 입력이 됩니다.

---

## 원칙

1. **지어내지 않는다.** 없는 경험, 수치, 출처는 빈칸으로 남기고 묻는다.
2. **플랫폼 중립.** 특정 포털 SEO, 공모 양식, 채용 사이트에 묶이지 않는다.
3. **한 번에 다 켜지 않는다.** 비슷한 스킬은 토글로 1~2개만. → [trigger-map](./skills/00-core/routing/trigger-map.md)

## 기여

AI 말투, 맞춤법, 번역투 패턴은 표에 행 하나를 추가하는 방식으로 기여할 수 있습니다.  
어디 파일에, 어떤 ID로, 어떤 열로 넣는지 [CONTRIBUTING.md](./CONTRIBUTING.md)에 적어 두었습니다.  
이슈로 예문만 보내도 됩니다. 새 스킬, 예시 추가도 같은 문서에 있습니다.  
쓸 만했다면 Star 하나가 다음 스킬을 만드는 데 큰 힘이 됩니다.

## 라이선스, 작성

[CC BY-SA 4.0](./LICENSE). 사용, 수정, 재배포 시 저작자 표시와 동일 라이선스 공유.  
작성: Juyoung Moon ([ReinaMoon](https://github.com/ReinaMoon)), Eun Kyoon Kim ([katalog](https://github.com/katalog)). [AUTHORS.md](./AUTHORS.md)
