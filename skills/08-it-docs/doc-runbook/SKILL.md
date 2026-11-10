---
name: doc-runbook
description: >
 장애, 배포, 반복 운영을 전제, 절차, 검증, 롤백, 온콜 중심 런북. 체크리스트, 실패 분기.
 트리거: 런북, runbook, 운영 절차서, 장애 대응, 롤백, 온콜, 배포 체크리스트.
 맥락 doc-project-book, 위키화 doc-confluence.
---

# doc-runbook

스트레스 상황 동일 순서 실행, 검증, 복구.

## 코어 참조

필수:
- `../../00-core/style/tone-matrix.md`
- `../../00-core/principles/korean-prose-rules.md`
- `../../00-core/output/quality-gates.md`

선택: `output-rules`, `writing-principles`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/deploy-rollback.md`

## 입력

| 입력 | 필수 | 설명 |
|------|:----:|------|
| 시스템, 작업명 | O | |
| 목적, 트리거 | O | 사용 조건 |
| 절차 초안 | 권장 | 티켓, 슬랙, 구두 |
| 환경 | 권장 | prod/staging, 리전 |
| 온콜, 에스컬 | 선택 | 역할, 채널 |
| 대시보드, 알림 | 선택 | URL, 쿼리명 |

필수 비면 작업명, 트리거, 환경 확인.

## 워크플로

1. 범위: 다루는 것/안 다루는 것 각 1줄.
2. 전제, 권한: 계정, VPN, 창, 의존.
3. 번호 절차. 단계 = 행동 + 기대 결과. 명령은 코드블록.
4. 검증 신호 정의.
5. 롤백, 실패 분기. 불가 시 명시.
6. 온콜, 커뮤니케이션.
7. 템플릿 출력, 완성 점검.

템플릿: `references/runbook-template.md`

## 출력

`references/runbook-template.md` 7절 구조 (메타 표, 목적, 전제, 절차, 검증, 롤백, 커뮤, 부록).

## 규칙

- 실행 순서 우선.
- 시크릿 평문 금지. 변수명, 매니저만.
- 단계마다 환경 표시.
- "적절히"만 있으면 구체화 또는 `TBD`.
- 절차 문장 명사형/`할 것` 통일.

## 완성 조건

- [ ] 전제, 절차, 검증, 롤백 분리
- [ ] 각 단계 기대 결과
- [ ] 롤백 또는 불가 사유
- [ ] 시크릿 없음
- [ ] 소유, 최종 검증일 또는 `TBD`

## 형제 스킬

| 상황 | 스킬 |
|------|------|
| 프로젝트 전체 | `doc-project-book` |
| 위키 게시 | `doc-confluence` |
| 장애 회고 회의 | `doc-meeting` |
