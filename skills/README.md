# WriteSkills 스킬 인덱스

**IT 실무자**, **블로그/소설을 쓰는 사람**, **이직 준비하는 사람**을 위한 한국어 스킬 **47개** + `00-core`.

- 루트 안내: [`../README.md`](../README.md)
- 설치 (Claude): [`../docs/install-guide.md`](../docs/install-guide.md)
- ChatGPT: [`../docs/install-guide-chatgpt.md`](../docs/install-guide-chatgpt.md)
- 영어로 쓸 때 (한국어 안내): [`../docs/writing-in-english.md`](../docs/writing-in-english.md)
- 영어 소설 연속성: [`../docs/novel-continuity-english-manuscript.md`](../docs/novel-continuity-english-manuscript.md)
- 개선 과제: [`../docs/gap-and-improvement.md`](../docs/gap-and-improvement.md)
- 스킬 선택: [`00-core/routing/trigger-map.md`](./00-core/routing/trigger-map.md)
- 라이선스: [`../LICENSE`](../LICENSE) (CC BY-SA 4.0)
- 스모크 fixture: [`../evals/`](../evals/)

`SKILL.md`는 짧은 명사/명령형. 카테고리 README는 사람용 안내서.

## 카테고리

| 폴더 | 스킬 수 | 다루는 일 |
|------|--------:|-----------|
| [00-core](./00-core/README.md) | (모듈) | 문체, 원칙, AI 말투 패턴, 인계, 비평모드, 시리즈, 체인 |
| [01-writing](./01-writing/README.md) | 4 | 단편, 블로그, 에세이, 피드 |
| [02-book](./02-book/README.md) | 6 | 실용서/기술서 |
| [03-novel](./03-novel/README.md) | 4 | 소설, 연재형, 연속성 (영어 원고 안내 포함) |
| [04-lecture](./04-lecture/README.md) | 5 | 강의, 워크숍 |
| [05-research](./05-research/README.md) | 2 | 조사 |
| [06-wiki](./06-wiki/README.md) | 4 | 지식 위키 |
| [07-bizplan](./07-bizplan/README.md) | 3 | 사업계획 |
| [08-it-docs](./08-it-docs/README.md) | 12 | 실무 + ADR/RFC/API/changelog/포스트모템/PR |
| [09-image](./09-image/README.md) | 2 | 이미지 프롬프트 |
| [10-edit](./10-edit/README.md) | 2 | AI 말투 제거, 맞춤법, 번역투 |
| [11-career](./11-career/README.md) | 3 | 이력서, 자기소개서, 면접 |

Before/After: [`../docs/showcase.md`](../docs/showcase.md)

## 설치 원칙

1. 스타터 팩 단위로 켠다. 입문: A / C / F.
2. writing 4개 동시 전부 ON 비권장.
3. Windows zip (PowerShell 안에서): `.\scripts\package-skill.ps1 <skill>`
4. Windows 팩: `.\scripts\package-all-starter.ps1`  (처음 한 번 `Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`)
5. macOS/Linux: `bash scripts/package-skill.sh <skill>`, 팩은 `bash scripts/package-all-starter.sh`

## 대표 체인

```
블로그:   (research-topic?) → write-blog → (image-content?)
소설:     novel-planning → novel-voice → novel-writing
          → novel-continuity → book-editing(소설)
IT 실무:  meeting|1on1|weekly
          project-book ⇄ confluence ⇄ runbook
설계:     doc-rfc → doc-adr
릴리스:   doc-pr → doc-api ⇄ doc-changelog
장애:     doc-postmortem → doc-runbook
위키→글:  wiki-activate → write-blog
커리어:   career-resume → career-cover-letter → career-interview
다듬기:   (아무 글) → edit-de-ai → edit-proofread
```
