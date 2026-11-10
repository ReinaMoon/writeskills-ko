# 06-wiki: 엔지니어링 지식 위키

개인 또는 팀의 LLM/로컬 지식 위키 4스킬입니다.  
옵시디언은 옵션. 일반 폴더면 `../00-core/adapters/plain-folder.md`.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [wiki-research](./wiki-research/SKILL.md) | 원문 보존 수집 | 위키에 넣을 raw | |
| [wiki-ingest](./wiki-ingest/SKILL.md) | 개념/경험 페이지화 | 노트 → 찾아 쓸 형태 | |
| [wiki-activate](./wiki-activate/SKILL.md) | 위키 → 글/강의/책 재사용 | 쌓아 둔 지식 꺼내기 | `examples/reuse-to-blog.md` |
| [wiki-audit](./wiki-audit/SKILL.md) | 중복, 충돌, 고아 점검 | 위키 품질 | `examples/conflict-cases.md` |

## 체인

```
wiki-research → wiki-ingest → wiki-activate ⇄ wiki-audit
```

팀 스페이스 How-to/Decision 페이지는 `../08-it-docs/doc-confluence`.

## 이 카테고리 범위 밖

- Notion/Confluence API 자동 동기화
- 벡터 DB/RAG 인덱서 설치
