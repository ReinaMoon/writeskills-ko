# 재투입 파이프라인

위키를 허브로 책, 강의, 글로 분기하는 시나리오.

---

## 1. 동시 전개

```
소스 노트, raw → wiki-ingest → 위키
 ├→ book-*
 ├→ lecture-*
 └→ write-*
```

같은 페이지를 책은 깊이, 강의는 비교, 실습, 블로그는 훅 중심으로 다르게 뽑는다.

---

## 2. 강의 > 책 승격

강의 Q&A, 현장 메모를 experience로 ingest > 누적 후 book 챕터화.

---

## 3. 글감 엔진

audit/activate(D)로 얕은 페이지, 미발행 후보 > write-* > 발행본을 다시 ingest.

---

## 4. 소스 연결

ingest와 동일 3방식(폴더 지침 / frontmatter sources / 레지스트리). 
소스는 읽기 전용.
