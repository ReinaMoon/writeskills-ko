# Before / After 쇼케이스

스킬을 켜기 전과 후가 어떻게 다른지 짧게 보여 줍니다.  
전체 입출력은 각 스킬의 `examples/` 폴더에 있습니다.

---

## 1. AI 말투 제거 (`edit-de-ai`)

**Before** (AI 말투 밀도 2.3)

> 오늘날 빠르게 변화하는 개발 환경에서, 효율적인 배포 전략은 그 어느 때보다 중요합니다. 이번 글에서는 카나리 배포가 무엇인지, 어떤 장점이 있는지, 그리고 실제로 어떻게 적용할 수 있는지 살펴보겠습니다.

**After** (밀도 0.3)

> 지난달 전체 배포 한 번에 결제 API 에러율이 8%까지 올랐고, 롤백에 40분이 걸렸습니다. 그 뒤로 트래픽 5%에만 먼저 배포하는 카나리를 붙였습니다.

진단 표에는 패턴 ID(T1 상투 도입, V3 "살펴보겠습니다", S1 3개 나열)가 붙습니다.  
수정본에 원문에 없던 수치가 생기면 `남은 확인`으로 따로 알려 줍니다.  
→ [`skills/10-edit/edit-de-ai/examples/before-after-blog.md`](../skills/10-edit/edit-de-ai/examples/before-after-blog.md)

---

## 2. 맞춤법, 번역투 (`edit-proofread`)

**Before**

> 이번 배포를 통해 어플리케이션의 성능 개선이 이루어졌습니다. 몇일 내로 메세지 큐 설정을 변경할 예정이니 참고 부탁드립니다.

**After**

> 이번 배포로 애플리케이션 성능이 좋아졌습니다. 며칠 안에 메시지 큐 설정을 바꿀 예정이니 참고 부탁드립니다.

변경 6건이 유형(맞춤법, 번역투, 표기)과 함께 표로 나옵니다.  
→ [`skills/10-edit/edit-proofread/examples/proofread-sample.md`](../skills/10-edit/edit-proofread/examples/proofread-sample.md)

---

## 3. 업무 메모 → 경력기술서 (`career-resume`)

**Before**

> 레디스 캐시 붙였고 쿼리 튜닝도 했음. 장애 대응 많이 했고 런북 정리함.

**After**

> - 주문 목록 조회에 Redis 캐시 계층을 도입해 p95 응답시간을 [수치?]에서 [수치?]로 줄임
> - 장애 대응 절차를 런북 [수치?]개로 정리해 평균 복구 시간을 [수치?]분 단축

모르는 수치는 지어내지 않고 `[수치?]`로 남긴 뒤, 무엇을 확인하면 되는지 질문 목록을 줍니다.  
→ [`skills/11-career/career-resume/examples/task-to-achievement.md`](../skills/11-career/career-resume/examples/task-to-achievement.md)

---

## 4. 자기소개서 STAR (`career-cover-letter`)

**Before**

> 저는 항상 문제 해결에 대한 열정을 가지고 있습니다. 포기하지 않고 팀원들과 소통하며 끈기 있게 해결해 나갔습니다.

**After**

> 배포 직후 주문 API 응답이 3초 넘게 느려진 적이 있습니다. 롤백해도 증상이 남아 코드 문제가 아니라는 것만 확실했습니다. 저는 배포 시점 전후의 DB 지표를 비교했고 ...

→ [`skills/11-career/career-cover-letter/examples/star-answer.md`](../skills/11-career/career-cover-letter/examples/star-answer.md)

---

## 5. 장애 회고 (`doc-postmortem`)

채팅 로그와 알림을 넣으면 타임라인, MTTD/MTTR, 5 Whys, 예방/감지/완화 액션 표가 나옵니다.  
사람 이름을 원인 주어로 쓰지 않도록 비난 표현을 바꿉니다.

| Before | After |
|--------|-------|
| A가 실수로 잘못 배포 | 배포 시 대상 환경 확인 단계가 없었다 |
| 제대로 테스트 안 함 | 스테이징에 해당 트래픽 패턴이 없었다 |

→ [`skills/08-it-docs/doc-postmortem/examples/sample-postmortem.md`](../skills/08-it-docs/doc-postmortem/examples/sample-postmortem.md)

---

## 6. PR 설명, 리뷰 코멘트 (`doc-pr`)

| Before | After |
|--------|-------|
| 버그 수정 | 주문 취소 시 쿠폰이 복구되지 않던 문제 수정 |
| 이거 왜 이렇게 짰어요? | [질문] 여기서 리스트를 두 번 순회하는 이유가 있을까요? 한 번에 합칠 수 있어 보입니다. |

→ [`skills/08-it-docs/doc-pr/examples/sample-pr.md`](../skills/08-it-docs/doc-pr/examples/sample-pr.md)

---

## 7. 소설 연재 회차표 (`novel-planning` 연재형)

"웹소설 연재로 기획해 줘"라고 하면 3막 플롯이 회차표로 바뀝니다. 회차당 사건 1개, 끝 훅 1개, 같은 훅 유형 3회 연속 금지.

| 회 | 사건 | 훅 유형 |
|----|------|---------|
| 1 | 주인공이 아버지 유품에서 계약서 발견 | 정보 공개 |
| 2 | 계약 상대 회사에 찾아감 | 위기 진입 |
| 3 | 계약을 이어받을지 선택 | 선택 강요 |

→ [`skills/03-novel/novel-planning/references/serial-format.md`](../skills/03-novel/novel-planning/references/serial-format.md)

---

## 8. 리뷰만 받기 (critique-only)

"고치지 말고 문제만 알려 줘"라고 하면 대체 원고 없이 진단표만 줍니다.  
`book-feedback`, `write-blog`, `novel-continuity`, `edit-de-ai` 진단 모드가 같은 규약을 씁니다.  
→ [`skills/00-core/output/critique-only.md`](../skills/00-core/output/critique-only.md)
