# Evals (스모크 fixture)

사람이 10분 안에 돌리는 최소 입출력 점검. CI는 후순위.

| ID | 스킬 | input | expect |
|----|------|-------|--------|
| E1 | doc-meeting | `meeting/input.md` | `meeting/expect-checklist.md` |
| E2 | write-blog | `blog/input.md` | `blog/expect-checklist.md` |
| E3 | novel-voice | `novel-voice/input.md` | `novel-voice/expect-checklist.md` |
| E4 | edit-de-ai | `de-ai/input.md` | `de-ai/expect-checklist.md` |
| E5 | career-resume | `resume/input.md` | `resume/expect-checklist.md` |

방법: input을 붙여 넣고, expect 체크리스트를 합격 기준으로 본다.  
E4, E5는 "지어내지 않는다" 원칙을 확인하는 핵심 케이스입니다.
