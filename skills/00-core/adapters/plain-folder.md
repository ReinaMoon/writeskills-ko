# 일반 폴더 어댑터 (옵시디언 없음)

위키, 리서치, 강의 산출물을 **일반 디렉터리 + MD 파일**만으로 둘 때 쓴다.

## 최소 구조

```
{주제}/
 README.md # 인덱스 (표)
 handoff/
 research/
 drafts/
 final/
```

## README 인덱스 예

```markdown
# {주제} 인덱스

| 단계 | 파일 | 상태 |
|------|------|------|
| 인계 | handoff/00-handoff.md | done |
| 조사 | research/RL_주제.md | draft |
```

## 규칙

- 위키링크 `[[ ]]` 대신 상대경로 ``[`제목`](./파일.md)`` 를 써도 된다.
- frontmatter는 그대로 유의미하다 (`title`, `updated`, `status`).
- 플러그인, 그래프 뷰를 전제하지 않는다.
