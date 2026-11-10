# 00-core: 공유 코어 모듈

단독 스킬이 아닙니다. 다른 스킬이 공통으로 참조하는 모듈입니다. 같은 내용을 스킬마다 복사해 두지 않습니다.

- 언어: 한국어
- 주 사용자: IT 실무자, 블로그 글쓴이, 소설 쓰는 사람
- 범위: 플랫폼 중립 (특정 포털, 지원사업, 특정 채널에 묶이지 않음)

## 모듈 목록

| 경로 | 역할 | 누가 참조하나 |
|------|------|---------------|
| `style/mystyle.template.md` | 사용자 문체 슬롯 (`mystyle.md`로 채워 씀) | 글쓰기, 책, 소설, 에세이 |
| `style/mystyle-gate.md` | 세션 최초 문체 온보딩 (한 번만) | 글쓰기, 책, 소설, 에세이 |
| `style/skill-prose-compact.md` | 스킬 문서 짧은 문체 (토큰 절약) | 스킬 작성 |
| `style/tone-matrix.md` | 칼럼/에세이/실무/소설 톤 차이 + 샘플 | 글쓰기, 책, IT 문서 |
| `principles/writing-principles.md` | 금지어, 호흡, 분량, 수정 시 보존 | 집필, 퇴고 스킬 |
| `principles/ai-tone-patterns.md` | 한국어 AI 말투 패턴 ID(V/S/T/K), 밀도 판정 | edit-de-ai, career-*, G3 게이트 |
| `principles/korean-prose-rules.md` | 종결어미, 호응, 문장 호흡, 표기 | 한국어 산출물 |
| `output/output-rules.md` | 단계별 산출물, 파일명, 포맷 | 다단계 워크플로 |
| `output/quality-gates.md` | 공통 완성 조건, 점검 표 | 퇴고, 리뷰, 피드백 |
| `output/critique-only.md` | 비평 전용(대체 원고 금지) | feedback, blog, novel-continuity |
| `handoff/pipeline-convention.md` | 체인 순서, 게이트, 인계 규약 | 책, 강의, 위키, 사업계획 |
| `handoff/chain-status.md` | 체인 상태 + suggested_next | 다단계 스킬 |
| `handoff/series-schema.md` | 시리즈/연재 frontmatter | blog, novel, lecture |
| `handoff/handoff-schema.md` | 기획 > 리서치 > 집필 인계 블록 | book/lecture/bizplan |
| `handoff/research-card-schema.md` | 공통 참조 카드 + 사업계획 프로필 | book/lecture/bizplan/research |
| `handoff/wiki-page-schema.md` | 개념/경험 페이지 frontmatter | wiki-* |
| `adapters/runtime-files.md` | docx/pptx/스크립트는 선택 사항 | 파일 생성이 필요할 때 |
| `adapters/vault-obsidian.md` | 로컬 노트 폴더 옵션 | wiki, 강의, 리서치 |
| `adapters/plain-folder.md` | 옵시디언 없는 일반 폴더 | wiki, 리서치 |
| `adapters/chatgpt-notes.md` | ChatGPT Knowledge/Project 적재 | 패키징, 이식 |
| `routing/trigger-map.md` | 스킬 선택, 충돌 방지 | 라우팅, description |
| `routing/core-ref-diet.md` | SKILL 코어 링크 길이 제한 | 스킬 작성자 |

## 스킬에서 참조하는 방법

1. **상대경로** 
 `SKILL.md`에 경로를 적습니다. 
 예: `참조: ../../00-core/principles/writing-principles.md`

2. **패키지용 복사 (Claude `.skill` zip)** 
 필요한 코어 파일만 해당 스킬 `references/core/`로 복사합니다. 
 `SKILL.md`에는 `references/core/...`로 적습니다.

3. **Project / Knowledge 적재** 
 `00-core`를 Project 파일 또는 Custom GPT Knowledge에 올리고, Instructions에 코어를 절차보다 우선한다고 한 줄 넣습니다.

### 충돌 시 순서

1. 사용자 지시 
2. 해당 스킬 `SKILL.md` 
3. `00-core` 원칙, 스키마 
4. 어댑터(런타임, 볼트, ChatGPT)

### 문체 적용 순서

1. 세션 최초면 `mystyle-gate.md` 
2. 사용자가 채운 `mystyle.md`가 있으면 최우선 
3. 없으면 `tone-matrix.md` 해당 장르 + `korean-prose-rules.md` 
4. 금지, 분량, 보존은 항상 `writing-principles.md`

### 코어 참조 길이

`SKILL.md`에는 코어 전체를 나열하지 않습니다. `routing/core-ref-diet.md`의 필수 2~3개만 적습니다.

## 주의

- 코어를 스킬마다 다른 버전으로 나누지 않습니다.
- 코어에 채널 SEO, 특정 정부 양식, 판매용 마케팅 문구, 특정인 문체 샘플을 넣지 않습니다.
- 런타임 스크립트 본문은 코어에 두지 않습니다. `adapters/`에는 규약만 둡니다.
