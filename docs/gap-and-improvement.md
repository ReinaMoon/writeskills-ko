# 외부 글쓰기 스킬 대비 부족한 점, 개선안

- 작성: 2026-11-10
- 대상: WriteSkills (한국어 **40** 스킬 + `00-core`)
- 목적: 인터넷에 흔한 글쓰기 Agent Skills / 프롬프트 팩과 비교해 **우리가 약한 지점**을 고르고, 개선 우선순위를 정한다.
- 독자: IT 실무자 + 블로그/소설을 쓰고 싶은 사람
- 상태: **P0~P2 반영 완료** (2026-11-10). 이후 10-edit, 11-career, doc-postmortem, doc-pr 추가로 **47** 스킬. 아래는 기록용.

비교는 특정 판매용 교재 레포가 아니라, 공개된 Claude Skills / 기술 글쓰기 프롬프트 / Custom GPT 관행을 기준으로 한다.

참고한 유형 (대표):

| 유형 | 예 | 강한 점 |
|------|----|---------|
| 소설 전용 Skills | Story Skills, creative-writing-skills, deep-novel-system, Calliope writing-skills | 연속성(continuity), 세계관/인물 레지스트리, 비평만 하는 스킬, CLI/프로젝트 상태 |
| 기술 글 프롬프트 | technical-article-writer, awesome-prompts technical writer, ADR/런북 프롬프트 모음 | 인터뷰형 입력, 코드 블로그 구조, ADR/changelog/API 문서 |
| 콘텐츠 GPT 관행 | Custom GPT + Knowledge + Actions | 스타일 가이드 적재, 발행 후 워크플로 연동 |

---

## 1. 우리가 이미 강한 점 (무리해서 따라가지 말 것)

1. **한국어 실무 + 창작이 한 저장소**  
   회의/런북/프로젝트북과 블로그/소설/강의가 같이 있다. 영문 소설 전용 팩에는 보통 IT 실무 문서가 없다.
2. **`00-core` 공유**  
   문체 게이트, 한국어 규칙, 인계 스키마를 카테고리마다 복제하지 않는다.
3. **토큰 절약형 `SKILL.md` + 상세 README**  
   실행 문서는 짧고, 사람 안내는 길다.
4. **플랫폼 중립**  
   특정 포털 SEO, 공모 양식에 안 묶인다.
5. **스타터 팩 + Claude 설치 경로**  
   zip/Project/Code를 구분해 적어 두었다.

이 축은 유지하고, 아래 갭만 메운다.

---

## 2. 갭 요약

| # | 갭 | 어디에 비해 약한가 | 영향 독자 |
|---|----|-------------------|-----------|
| G1 | 소설 **연속성/상태** (인물·시간·설정 모순 점검) | Story Skills, deep-novel, creative-writing-skills | 소설 |
| G2 | **비평만** 하는 모드 (원고 대신 쓰지 않음) | Calliope augmentation-only | 소설, 블로그, 책 |
| G3 | 기술 블로그 **코드 글** 패턴 (before/after, 스니펫 규칙) | technical-article-writer 계열 | IT 블로그 |
| G4 | IT 문서 종류 부족: **ADR, RFC, changelog, API 문서** | 기술 라이터 프롬프트 모음 | IT 실무 |
| G5 | **설치 UX**: `npx skills add`급 원클릭, 검증 CLI | 최근 Skills 카탈로그들 | 전원 |
| G6 | **시리즈/연재** 관리 (회차, 이전글, 캐논 이월) | Story series, 시리얼 픽션 팩 | 블로그, 소설 |
| G7 | **평가/스모크 자동화** (입출력 fixture) | 성숙한 스킬 레포 | 유지보수 |
| G8 | ChatGPT / 영문 패키지 | 대부분 영문 우선 팩 | 전원 (후순위) |
| G9 | 예시·레퍼런스 **깊이** (소설 쪽이 특히 얇음) | 전용 소설 팩 | 소설 |
| G10 | 위키/조사 → 글 **재사용 UX**가 문서에만 있고 스킬 간 자동 힌트가 약함 | Knowledge+핸드오프 잘 된 GPT | 블로그, 강의 |

---

## 3. 갭별 개선안 (실행 단위)

### G1. 소설 연속성 (우선 높음)

**문제:** `novel-*`는 기획→보이스→씬은 있으나, 챕터를 여러 번 쓸 때 인물 지식/소품/시간축 모순을 잡는 스킬이 없다.

**개선:**

1. `novel-continuity` (또는 `book-editing` 소설 모드 확장)  
   - 입력: 최근 N씬 + `story-bible` MD  
   - 출력: 모순 목록만 (자동 개작 금지 옵션)
2. 최소 스키마 파일 템플릿  
   - `characters.md`, `timeline.md`, `facts.md` (YAML frontmatter + 표)
3. `novel-writing` 완성 조건에 “bible 갱신 TODO” 체크 추가

**하지 말 것:** 당장 영문 Story CLI 전체를 이식. MD 스키마 + 점검 스킬이면 충분.

### G2. 비평 전용 모드 (우선 높음)

**문제:** 시장에는 “원고를 안 고치고 진단만” 하는 스킬이 차별점이다. 우리는 대부분 초안 생성 중심이다.

**개선:**

1. 공통 패턴 `critique-only`를 `00-core`에 짧게 정의  
   - 산출 = 진단표, 순위 이슈, 질문. **대체 원고 금지**(요청 시에만 rewrite)
2. 적용  
   - `book-feedback`에 명시적 모드: `critique` / `rewrite-suggest`  
   - `write-blog`, `novel-writing`에 “리뷰만” 트리거 추가
3. 예시 1개: 같은 원고 → 진단만 vs 수정 제안

### G3. 기술 블로그 코드 글 (우선 높음)

**문제:** `write-blog`는 검색/목차는 있으나, 코드 중심 글(버그 헌트, 벤치, 마이그레이션) 슬롯이 약하다.

**개선:**

1. `write-blog/references/dev-article-patterns.md`  
   - 유형: Bug Hunt / How we built / Benchmark / Migration / Lessons  
   - 규칙: 스니펫 ≤20줄, before→after, 재현 조건, 비범위
2. `write-blog` 입력에 `글 유형 = 코드글` 분기
3. 예시: “카나리 배포 롤백 버그” 아웃라인 샘플

### G4. IT 문서 확장 (우선 중)

**문제:** 런북/회의/주간은 있으나 ADR·changelog·API 가이드가 없다. 인터넷 기술 라이터 팩의 기본 세트다.

**개선 (새 스킬 후보, v1.1):**

| 스킬 | 한 줄 |
|------|------|
| `doc-adr` | 아키텍처 결정 기록 (Context/Decision/Consequences) |
| `doc-changelog` | 릴리스 노트 (Breaking / Features / Fixes) |
| `doc-api` | 엔드포인트 설명 MD (요청/응답/에러, OpenAPI는 선택) |
| `doc-rfc` | 팀 RFC/디자인 독 초안 |

기존 `08-it-docs`에 넣고, 스타터 팩 B에 `doc-adr`만 먼저 추가해도 된다.

### G5. 설치 UX (우선 중)

**문제:** zip 수동 + 코어 벤더링은 동작하지만, 요즘 팩은 `npx skills add …` 수준을 기대한다.

**개선:**

1. `scripts/package-all-starter.sh` (팩 A/C/F 일괄 zip)
2. `scripts/validate-skill.sh` (name=폴더명, frontmatter, 깨진 상대경로)
3. README에 “검증 통과 zip만 업로드” 한 줄
4. (후순위) Agent Skills 카탈로그 형식 메타데이터

### G6. 시리즈/연재 (우선 중)

**문제:** 블로그 `series` 필드와 소설 다권/연재 연결이 얕다.

**개선:**

1. `00-core/handoff/series-schema.md` — 회차, prev/next, 캐논 이월 규칙
2. `write-blog` / `novel-planning`에서 스키마 링크
3. 위키 `wiki-activate`에 “시리즈 다음 회 재료 뽑기” 예시

### G7. 평가 fixture (우선 중·유지보수)

**문제:** 스모크는 설치 가이드 표뿐이고, 회귀 테스트용 입출력이 없다.

**개선:**

1. `evals/` 또는 각 `examples/`에 `input.md` + `expect-checklist.md`
2. 팩별 3개만 먼저 (meeting, blog, novel-voice)
3. CI는 나중에. 우선 사람이 체크리스트로 돌릴 수 있게

### G8. ChatGPT / 영문 (우선 낮음)

문서에 예고만 있다. 영문 소설 팩에 밀리지 않으려면:

1. `docs/install-guide-chatgpt.md` (Instructions 템플릿 + Knowledge 목록)
2. 영문은 `locale/en/` 복사본이 아니라, 나중에 필요한 체인만

### G9. 소설 예시 보강 (우선 중)

**문제:** 소설은 스킬 3개인데 examples가 voice 쪽에 치우쳐 있다.

**개선:**

1. `novel-planning/examples/one-page-premise.md`
2. `novel-writing/examples/scene-draft-short.md`
3. continuity 점검 전/후 샘플 (G1과 함께)

### G10. 체인 UX (우선 중)

**문제:** wiki→blog, research→lecture 연결은 README에만 있고, 스킬이 “다음에 뭘 켤지”를 약하게 말한다.

**개선:**

1. 각 체인 끝 `체인 상태` 블록에 `suggested_next` + 한 줄 이유 고정
2. `trigger-map`에 “위키에 쌓인 걸로 블로그” 행 추가
3. 스타터 팩에 **블로그+위키** 조합 팩 하나 (예: K)

---

## 4. 우선순위 로드맵 (제안)

### P0 (바로 체감)

1. G3 기술 블로그 코드글 패턴 + 예시  
2. G2 비평 전용 모드 (core 한 장 + feedback/feedback 반영)  
3. G9 소설 예시 2~3개  
4. G5 `validate-skill` + 스타터 zip 스크립트

### P1 (차별화)

5. G1 소설 continuity 스키마 + 점검 스킬  
6. G4 `doc-adr` (+ 선택 changelog)  
7. G6 시리즈 스키마  
8. G10 체인 `suggested_next` 통일

### P2 (확장)

9. G4 나머지 (API, RFC)  
10. G7 evals fixture  
11. G8 ChatGPT 가이드

---

## 5. “따라 하지 않을” 것

| 외부에서 흔한 것 | 우리가 안 하는 이유 |
|------------------|---------------------|
| 포털/알고리즘 SEO 최적화 | 플랫폼 중립 원칙 |
| 판매 CTA·뉴스레터 전환 강제 | 독자가 실무/창작 목적 |
| 특정 작가 문체 복제 기본값 | 사용자 `mystyle`만 |
| 소설 CLI 전체 이식 | 유지비용 큼. MD 스키마로 대체 |
| 40개 한꺼번에 ON 권장 | 트리거 충돌 |

---

## 6. 성공 기준 (개선 후)

- 소설: 3챕터 이상 이어 쓸 때 모순 점검 리포트가 나온다.  
- 블로그: 코드글 유형으로 “재현 조건 + before/after + 스니펫 규칙”이 기본 아웃라인에 들어간다.  
- IT: ADR 초안을 스타터 팩으로 10분 안에 뽑을 수 있다.  
- 설치: validate 스크립트가 깨진 스킬 zip을 업로드 전에 막는다.  
- 비평: “리뷰만” 요청 시 대체 원고 없이 진단표만 나온다.

---

## 7. 반영 결과 (완료)

| 항목 | 위치 |
|------|------|
| G2 critique-only | `skills/00-core/output/critique-only.md` + book-feedback/write-blog |
| G3 코드글 | `write-blog/references/dev-article-patterns.md`, `examples/canary-rollback-bug.md` |
| G9 소설 예시 | planning/writing examples + continuity 예시 |
| G5 스크립트 | `scripts/validate-skill.sh`, `package-all-starter.sh` |
| G1 continuity | `skills/03-novel/novel-continuity/` |
| G4 IT 문서 | `doc-adr`, `doc-changelog`, `doc-api`, `doc-rfc` |
| G6 시리즈 | `skills/00-core/handoff/series-schema.md` |
| G10 체인 | `skills/00-core/handoff/chain-status.md` + 주요 스킬 suggested_next |
| G7 evals | `evals/` |
| G8 ChatGPT | `docs/install-guide-chatgpt.md` |
