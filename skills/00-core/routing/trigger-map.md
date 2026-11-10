# 트리거 맵 (스킬 선택)

description의 `트리거:` 키워드와 맞춥니다.  
저장소에는 모든 스킬이 들어 있습니다. 이 문서는 **Claude에서 무엇을 켤지 / 어떤 요청에 무엇을 쓸지**를 고르는 표입니다.

---

## 1. 설치, 적재 원칙

- git 저장소 = 전체 카탈로그. **삭제가 아니라 토글**로 조절합니다.
- Claude Skills는 description으로 자동 선택됩니다. 비슷한 스킬을 많이 ON 하면 모호한 요청에서 헷갈릴 수 있습니다.
- 권장: 스타터 팩(파이프라인) 단위로 ON. 자세한 설치는 [`../../../docs/install-guide.md`](../../../docs/install-guide.md).
- 모호하면 `write-content`로 가거나, 장르를 한 번 되묻습니다.

### writing 4개

저장소에 4개 모두 두는 것은 정상입니다.  
**동시에 전부 ON** 하는 것만 피하라고 적은 것입니다. (금지 아님, 오선택 방지)

| ON 조합 | 설명 |
|---------|------|
| 1개만 | 가장 안전 |
| blog + content | 채널 확정/미정이 섞이면 헷갈림 → 가급적 택1 |
| essay + social | 산문/피드 목적이 다르면 택1 |
| 4개 전부 | “글 써줘”에 아무 스킬이나 붙을 수 있음 → 비권장 |

---

## 2. 스킬별 트리거

### 01-writing

| 스킬 | 쓸 때 | 트리거 예 | 쓰지 말 때 |
|------|-------|-----------|------------|
| write-content | 채널 미정 단편 | 글쓰기, 칼럼, 기고, 뉴스레터 | 이미 블로그/에세이/소셜로 확정 |
| write-blog | 일반 블로그, 튜토리얼 | 블로그, SEO, H2, 가이드 포스트 | 특정 포털 전용 SEO |
| write-essay | 시선, 1인칭 산문 | 에세이, 수필, 시선 설계 | 논증 칼럼, HOW TO |
| write-social | 피드 롱폼, 훅 | 롱폼, 훅, 피드 글, 소셜 포스트 | 짧은 광고 카피만 |

### 02-book

| 스킬 | 트리거 예 |
|------|-----------|
| book-planning | 책 기획, 목차, 실용서 기획 |
| book-research | 챕터 리서치, 참조 카드 |
| book-writing | 챕터 집필, 본문 초안 |
| book-editing | 퇴고, 3패스, 문장 다듬기 |
| book-feedback | 가상 독자, 편집자 피드백 |
| book-citation | 인용, 참고문헌, 각주 |

### 03-novel

| 스킬 | 트리거 예 |
|------|-----------|
| novel-planning | 소설 기획, 플롯, 인물 설계 |
| novel-voice | 문체 규약, 파일럿, 보이스 |
| novel-writing | 소설 집필, 씬 쓰기 |
| novel-continuity | 연속성, 모순, story bible, 타임라인 |

소설 퇴고는 `book-editing` (소설 모드). 집필 후 모순 점검은 `novel-continuity`.

### 04-lecture

| 스킬 | 트리거 예 |
|------|-----------|
| lecture-plan | 강의 기획, 워크숍 설계 |
| lecture-research | 강의 자료 조사, 꼭지 소재 |
| lecture-blueprint | 슬라이드 메시지, 블루프린트 |
| lecture-slides | 슬라이드 스펙, 덱 초안 |
| lecture-review | 덱 점검, 강의 자료 QA |

### 05-research

| 스킬 | 트리거 예 |
|------|-----------|
| research-topic | 주제 조사, 리서치 노트, 배치 조사 |
| research-report | 조사 보고서, 현황 보고 |

### 06-wiki

| 스킬 | 트리거 예 |
|------|-----------|
| wiki-research | 위키용 원문 수집 |
| wiki-ingest | 위키 페이지 생성, 인제스트 |
| wiki-activate | 위키 > 원고 재사용 |
| wiki-audit | 위키 점검, 고아 페이지 |

### 07-bizplan

| 스킬 | 트리거 예 |
|------|-----------|
| bizplan-research | 사업 리서치, 시장, 경쟁 카드 |
| bizplan-write | 사업계획서, BP 본문 |
| bizplan-pitch | 피치덱, 투자 발표 스토리 |

### 08-it-docs

| 스킬 | 트리거 예 |
|------|-----------|
| doc-meeting | 회의록, 액션 아이템 |
| doc-1on1 | 1:1 노트, 코칭 기록 |
| doc-weekly | 주간 보고 |
| doc-runbook | 런북, 장애 절차, 롤백 |
| doc-project-book | 프로젝트북, 결정 로그 |
| doc-confluence | 위키형 팀 페이지, 스페이스 문서 |
| doc-adr | ADR, 아키텍처 결정 |
| doc-rfc | RFC, 디자인 독 |
| doc-api | API 문서, 엔드포인트 설명 |
| doc-changelog | changelog, 릴리스 노트 |
| doc-postmortem | 포스트모템, 장애 회고, RCA, 근본 원인 |
| doc-pr | PR 설명, 커밋 메시지, 리뷰 코멘트 |

### 09-image

| 스킬 | 쓸 때 | 트리거 예 | 쓰지 말 때 |
|------|-------|-----------|------------|
| image-book | 책 표지, 챕터 삽화 | 표지, 북커버, 챕터 삽화, 라인 드로잉 | 블로그 썸네일, 강의 도해 |
| image-content | 썸네일/OG, 인포 | 썸네일, OG, 대표 이미지, 인포그래픽 | 책 표지, 본문 삽화 시리즈 |

### 10-edit

| 스킬 | 쓸 때 | 트리거 예 | 쓰지 말 때 |
|------|-------|-----------|------------|
| edit-de-ai | AI 초안 말투 정리 | AI 티, AI 말투, 사람처럼, 자연스럽게 | 구성부터 다시 (book-editing) |
| edit-proofread | 표기, 어법 | 맞춤법, 띄어쓰기, 번역투, 교정 | 말투 변경 |

### 11-career

| 스킬 | 트리거 예 |
|------|-----------|
| career-resume | 이력서, 경력기술서, resume, 성과 정리 |
| career-cover-letter | 자기소개서, 자소서, 지원동기, 커버레터 |
| career-interview | 면접 준비, 예상 질문, 모의 면접, 기술 면접 |

---

## 3. 충돌, 우선순위

| 상황 | 선택 |
|------|------|
| “블로그 에세이” | 검색/목차면 blog, 시선/공명이면 essay |
| “페북/링크드인에 올릴 긴 글” | write-social |
| “책 챕터 초안” | book-writing |
| “회의 요약” | doc-meeting |
| “사업계획” | bizplan-* (특정 공모 양식명으로 라우팅하지 않음) |
| “위키에 정리” | 개인/LLM 위키 → wiki-*, 팀 스페이스 → doc-confluence |
| “표지 vs 썸네일” | 책 → image-book, 블로그/강의/OG → image-content |
| “위키에 쌓인 걸로 블로그” | wiki-activate → write-blog |
| “리뷰만 / 고치지 마” | critique-only (`critique` 모드) |
| “소설 설정 모순” | novel-continuity |
| “ADR / 설계 결정” | doc-adr (긴 제안은 doc-rfc) |
| “글 다듬어 줘” | 말투면 edit-de-ai, 표기면 edit-proofread, 구성이면 book-editing |
| “장애 정리” | 복구 후 회고면 doc-postmortem, 절차면 doc-runbook |
| “웹소설 / 연재 기획” | novel-planning 연재형 |
| “경력 정리” | 제출 문서면 career-resume, 평소 기록이면 doc-weekly |

---

## 4. 일반 구조로 안내할 요청

| 사용자 말 | 안내 |
|-----------|------|
| 네이버, 스마트블록, C-Rank | 일반 검색 블로그면 `write-blog` |
| 브런치 전용 양식 | `write-essay` 또는 `write-blog` |
| 특정 정부 창업 공모 양식 | `bizplan-write` 일반 절 구조 |
| 특정 SNS 전용 스킬 | `write-social` |
| 특정 채용 사이트 양식 | `career-resume` 일반 구조 |
| 특정 웹소설 플랫폼 공식 | `novel-planning` 연재형 일반 구조 |

---

## 5. description 작성 규칙

1. `트리거:`에 위 표를 반영한다.
2. 형제 스킬은 이 목록의 이름만 적는다.
3. 판매용 마케팅 CTA, 커리큘럼식 장 번호를 넣지 않는다.
4. 코어를 바꾸면 이 맵과 각 스킬 description을 같이 고친다.
