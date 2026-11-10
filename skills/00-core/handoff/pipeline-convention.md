# 파이프라인 규약

체인으로 묶인 스킬이 같은 방식으로 인계, 중단, 재개하도록 하는 공통 규칙입니다.

---

## 1. 표준 체인

```
블로그: (research-topic?) → write-blog → (image-content?)
단편/칼럼: write-content | write-essay | write-social
실용서: book-planning → book-research → book-writing
 → book-editing → book-feedback → book-citation
 → (image-book?)
소설: novel-planning → novel-voice → novel-writing
 → novel-continuity → book-editing(소설 모드)
강의: lecture-plan → lecture-research → lecture-blueprint
 → lecture-slides → lecture-review → (image-content?)
조사보고: research-topic → research-report
위키: wiki-research → wiki-ingest → wiki-activate
 ⇄ wiki-audit
 wiki-activate → (write-* | book-* | lecture-*)
사업계획: bizplan-research → bizplan-write → bizplan-pitch
IT 단발: doc-meeting | doc-1on1 | doc-weekly
IT 수명주기: doc-project-book ⇄ doc-confluence ⇄ doc-runbook
IT 설계문서: doc-rfc → doc-adr | doc-api | doc-changelog
```

체인 상태 형식: `chain-status.md` (`suggested_next` 포함).

중간 스킬을 건너뛸 때는 사용자 확인을 받고, 인계 문서에 `skipped:`를 적습니다.

---

## 2. 인계 원칙

1. **파일이 기준 문서**이다. 대화만으로 다음 스킬에 넘기지 않는다 (사용자가 붙여넣기를 원한 경우 제외).
2. 인계 파일은 `handoff-schema.md` 슬롯 번호를 유지한다. 번호 변경, 삭제를 금지한다. 빈 값은 `[미정]`.
3. 사용자 발언과 인계 파일이 충돌하면 **사용자 발언 우선**, 동시에 파일 갱신을 제안한다.
4. 후속 스킬은 인계에 있는 종결어미, 출처 체제를 재질문하지 않는다. `[미정]`일 때만 묻는다.
5. 체인 폴더를 쓰면 산출물을 그 안에 모은다. 폴더명은 주제 30자 이내, 특수문자 최소화.

---

## 3. 단계 게이트

각 스킬은 종료 시 다음을 남깁니다.

```markdown
## 체인 상태
- pipeline: {book|lecture|wiki|bizplan|research|writing|it}
- skill: {현재 스킬}
- status: done | blocked | partial
- next: {다음 스킬 또는 none}
- handoff: {상대경로}
- risk: {없으면 생략}
```

`blocked`이면 이유와 필요 입력을 짧게 적고 중단합니다.

---

## 4. 모드, 옵션

| 개념 | 규칙 |
|------|------|
| research-topic 배치(메가) | 별도 스킬이 아니라 모드. 마스터 노트 + 서브 노트 |
| book-feedback | reader / editor 모드 단일 스킬 |
| book-editing 소설 모드 | 체크리스트만 분기, 스킬 분리 없음 |
| lecture-slides | MD 스펙 기본, pptx는 어댑터 |
| 이미지 | 본 체인 완료 후 선택 |

---

## 5. 동시 설치, 트리거

유사 스킬을 한꺼번에 활성화하면 트리거가 충돌합니다. 
파이프라인 단위로만 설치, 적재하는 것을 권장합니다. 상세는 `routing/trigger-map.md`.

---

## 6. 재개

1. 체인 폴더에서 최신 `status: done` 인계/산출을 찾는다.
2. `next` 스킬부터 시작한다.
3. 입력이 오래되었으면(`updated` 30일+ 등) 신선도만 확인하고 전체를 다시 만들지 않는다.
