---
name: doc-postmortem
description: >
 장애 회고(포스트모템). 비난 없는 형식. 타임라인, 영향, 근본 원인(5 Whys), 재발 방지 액션.
 트리거: 포스트모템, 장애 회고, 장애 보고서, incident review, RCA, 근본 원인, 사후 분석.
 절차는 doc-runbook, 결정은 doc-adr, 회의록은 doc-meeting.
---

# doc-postmortem

사람이 아니라 시스템과 절차를 본다. 입력 밖 사실 금지.

## 코어 참조

필수: `tone-matrix`, `korean-prose-rules`, `quality-gates`  
선택 → `../../00-core/routing/core-ref-diet.md`  
템플릿: `references/postmortem-template.md`  
예시: `examples/sample-postmortem.md`

## 입력

알림/채팅 로그, 타임라인 메모(필수), 영향 지표(권장), 심각도(선택).

## 워크플로

1. 로그에서 타임라인 추출. 시각 + 사건 + 출처. 시간대 명시.
2. 감지, 대응, 복구 시점 표시. MTTD, MTTR 계산.
3. 영향: 사용자, 기간, 건수, 금액. 없으면 `[TODO-FACT]`.
4. 원인: 트리거, 근본 원인(5 Whys), 기여 요인 분리.
5. 액션: 예방, 감지, 완화 3분류. 담당, 기한, 티켓.
6. 잘된 점, 운이 좋았던 점.

## 출력

`postmortem-YYYYMMDD-slug.md`

```markdown
## 체인 상태
- pipeline: it-docs
- skill: doc-postmortem
- status: done
- next: doc-runbook | doc-adr | doc-meeting
- suggested_next: doc-runbook
- reason: 복구 절차를 런북에 반영
```

## 규칙

- 개인 이름을 원인 주어로 쓰지 않음. "배포 절차에 확인 단계가 없었다".
- "부주의", "실수" 단어 금지. 왜 그 행동이 합리적이었는지 서술.
- 액션 없는 원인 금지. 액션은 검증 가능한 문장.
- 고객 공지용 요약은 별도 절, 내부 용어 제거.

## 완성

타임라인 출처, MTTD/MTTR, 5 Whys, 액션 담당/기한 또는 TBD, 비난 표현 없음

## 형제

doc-runbook / doc-adr / doc-meeting / doc-changelog
