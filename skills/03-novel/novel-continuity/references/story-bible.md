# story-bible 최소 스키마

프로젝트 폴더에 아래 파일을 둔다. 없으면 novel-continuity가 초안을 제안한다.

## characters.md

```yaml
---
type: characters
updated: YYYY-MM-DD
---
```

| id | 이름 | 알고 있는 것 | 모르는 것 | 말투 | 소지품 |
|----|------|--------------|-----------|------|--------|

## timeline.md

```yaml
---
type: timeline
updated: YYYY-MM-DD
---
```

| t | 장면/챕터 | 시점 | 장소 | 경과 |
|---|-----------|------|------|------|

## facts.md

```yaml
---
type: facts
series_id: ""
updated: YYYY-MM-DD
---
```

| id | 사실 | 출처 씬 | 깨면 안 됨 |
|----|------|---------|------------|

규칙: 새 씬을 쓴 뒤 `novel-writing` 완성 시 bible 갱신 TODO를 남긴다.
