---
name: lecture-review
description: >
 스펙 MD 우선 덱 QA, 승인 후 수정. 트리거: 덱 점검, 슬라이드 리뷰, QA.
 slides.
---

# lecture-review

리포트 → 승인 → 수정. 예시: `examples/scorecard-sample.md`

## 코어 참조

필수: `pipeline-convention`, `research-card-schema`, `output-rules`
선택 → `../../00-core/routing/core-ref-diet.md`

## 입력

`SS_*`(권장), pptx(부가), `BP_*`(반영률), `LP/RL`. pptx만→추출 후 스펙화 권장.

## 워크플로

인벤토리 → `references/review-axes.md` → 리포트(요약, 수정표) → 승인 수정.

스펙 먼저, 바이너리 동기화. 반영률 70% 미만 blueprint 회귀.

## 출력

리뷰 요약, 수정표, 체인(`next: none|blueprint|slides`).

## 규칙, 완성

무동의 대규모 수정 금지. 1장1메시지, 금지어 점검.
완성: 축 실행, 수정표, 승인 반영, 체인.

## 형제

blueprint / slides
