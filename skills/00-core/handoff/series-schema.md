# 시리즈 / 연재 스키마

블로그 연재, 소설 다권/연재, 강의 시리즈에 공통.

## frontmatter (권장)

```yaml
series_id: deploy-checklist
series_title: 배포 실무
episode: 3
episode_total: 5   # 모르면 null
prev: "./ep-02.md" # 또는 URL / TBD
next: "./ep-04.md"
canon_carry: true  # 이전 회 설정/용어 이월
```

## 규칙

1. 회차마다 `prev`/`next` 중 하나는 채우거나 `TBD`.
2. `canon_carry: true`면 이전 회 용어·약속을 깨지 않는다. 깨면 본문에 명시.
3. 소설은 `series_id`를 story-bible `facts.md`와 맞춘다.
4. 블로그 태그에 시리즈명을 넣어도 되고 생략해도 된다.
5. 색인(허브) 글이 있으면 episode `0` 또는 `hub: true`.

## 체인 힌트

시리즈 다음 회 재료: `wiki-activate` 또는 `research-topic` → 집필 스킬.
