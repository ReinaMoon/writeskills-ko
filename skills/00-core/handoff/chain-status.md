# 체인 상태 블록

다단계 스킬 끝에 붙인다. 다음 스킬을 사람이 고르기 쉽게 `suggested_next`를 넣는다.

```markdown
## 체인 상태
- pipeline: blog | book | novel | lecture | research | wiki | bizplan | it-docs
- skill: {현재}
- mode: {있으면}
- status: done | partial | blocked
- next: {가능한 후보들}
- suggested_next: {가장 자연스러운 1개}
- reason: {한 줄}
- handoff: {파일 또는 none}
```

## suggested_next 예

| 방금 끝 | suggested_next | reason |
|---------|----------------|--------|
| research-topic | research-report 또는 write-blog | 제출용 vs 글감 |
| wiki-activate | write-blog | 위키→포스트 |
| novel-writing | novel-continuity | 모순 점검 |
| novel-continuity | book-editing | 소설 퇴고 |
| lecture-blueprint | lecture-slides | 스펙 조판 |
| doc-meeting | doc-project-book | 결정을 기준 문서로 |
| bizplan-write | bizplan-pitch | 발표용 |
