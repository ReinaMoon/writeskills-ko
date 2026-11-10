# 비평 전용 모드 (critique-only)

원고를 **대신 쓰지 않는다**. 진단, 순위, 질문만 낸다.  
rewrite는 사용자가 명시할 때만 (`rewrite-suggest` 또는 “고쳐줘”).

## 모드

| 모드 | 산출 | 금지 |
|------|------|------|
| `critique` | 진단표, High/Mid/Low, 질문 | 대체 원고, 문장 재작성 |
| `rewrite-suggest` | 위 + 구간별 수정 방향 1~3줄 | 전편 재작성(요청 시에만 허용) |

신호: 리뷰만, 비평만, 진단만, 고치지 마, critique → `critique`.  
고쳐줘, 리라이팅, 문장 다듬어 → 해당 집필/퇴고 스킬 또는 `rewrite-suggest`.

## 진단표 (최소)

```markdown
## 비평 모드: critique | rewrite-suggest
### 한 줄 요약
### High (반드시)
| # | 위치 | 문제 | 근거 | 권장 후속 |
### Mid
### Low / 취향
### 질문 (사용자에게)
### 자동 수정: 없음
```

## 규칙

1. 관찰과 평가를 섞어 “다 바꿔라”로 끝내지 않는다.
2. 칭찬 인플레 금지. 강점은 1~3개.
3. 팩트/맞춤법은 표시만. 본문 치환 금지(`critique`).
4. 체인 상태에 `mode: critique|rewrite-suggest`를 넣는다.
