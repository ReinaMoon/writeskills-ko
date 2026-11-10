# 위키 페이지 스키마

concept, experience 페이지의 frontmatter, 본문 골격입니다. 
특정 노트 앱(옵시디언 등)에 종속되지 않습니다. 로컬 폴더 규칙은 `adapters/vault-obsidian.md`를 참고합니다.

폴더 지침이 다른 필드명(`category` 등)을 쓰면 **폴더 스키마 우선**, 아래는 기본값입니다.

---

## 1. 공통 frontmatter

필수: `type`(또는 폴더 대체 필드), `sources`, `updated`

```yaml
---
type: concept # concept | experience
title: ""
sources:
 - "path/or-url"
tags: []
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

규칙:

- `sources`는 재컴파일, 신선도 점검의 근거. 노트는 위키링크 가능, 바이너리, 외부 URL은 문자열.
- 웹 출처는 본문 출처란에 접근일을 적는다.
- `tags`는 과다 부착하지 않는다.

---

## 2. concept 템플릿

외부 사실, 정의, 수치 중심. 경험과 섞지 않습니다.

```markdown
# {제목}

## 정의
(소스 사실 유지)

## 핵심 내용
- …

## 주요 수치
- … (출처) / 소스에 근거 없으면 "소스에 근거 없음"

## 출처
- …

## 연결
- [[관련]]
```

보존 수준: 정의, 핵심, 수치는 원문 충실(L1). 도입 한 줄, 연결 메모만 요약, 일반화(L3) 허용.

---

## 3. experience 템플릿

1인칭 현장 기록. 책, 강의 경험 주입의 직접 소스.

```markdown
# {무엇을 한 기록}

## 상황
## 한 일
## 결과
## 적용 원칙
(1~2개, 재사용 가능한 판단 기준)
```

상황, 한 일, 결과는 L1. 적용 원칙만 L3. 
외부 통계, 정의가 필요하면 별도 concept으로 분리 후 `연결`.

---

## 4. 페이지명

- 주제 단위 명사구.
- 고유명, 원어는 유지 (예: MCP, RAG).
- 경험 페이지는 동작이 보이게 (`~한 기록`).
- 파일명 = 제목. 동일 제목은 신규 생성 대신 갱신 또는 audit.

---

## 5. 인덱스 (MOC)

자동 인덱스가 있으면 수동 등록을 생략합니다. 
수동 MOC를 쓸 때만:

```markdown
## 개념 (concept)
- [[…]]

## 경험 (experience)
- [[…]]
```

신규 저장 시 해당 섹션에 링크를 추가합니다.

---

## 6. 검증 (activate / audit 연계)

- [ ] type, sources, updated 존재
- [ ] concept에 1인칭 경험 본문이 섞이지 않음
- [ ] experience에 외부 정의, 통계가 본문으로 들어오지 않음
- [ ] 고아 페이지, 중복 제목은 wiki-audit 대상
