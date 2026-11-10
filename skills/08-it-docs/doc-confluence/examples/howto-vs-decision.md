# 예시: how-to 페이지 vs 결정 페이지

## A. how-to (절차)

```markdown
---
title: 스테이징 접속 방법
summary: VPN 연결 후 bastion을 거쳐 스테이징 클러스터에 붙는 절차.
labels: [howto, staging]
owner: platform
status: current
updated: 2026-11-10
---

# 스테이징 접속 방법

> **요약:** VPN → bastion → kubeconfig. 계정은 IT에 요청.

## 대상, 전제
- 대상: 백엔드 개발자
- 전제: VPN 계정, 1Password `staging-kube`

## 본문
1. VPN 연결
2. `ssh bastion-staging`
3. kubeconfig 복사 후 `kubectl get ns`

## 관련 링크
- 런북: 결제 API 카나리 배포
```

## B. 결정 (ADR 요약형)

```markdown
---
title: 알림 채널을 #ops로 통일
summary: 서비스 알림은 Slack #ops 단일 채널. 팀 DM 분산 금지.
labels: [decision, ops]
owner: platform
status: current
updated: 2026-11-10
---

# 알림 채널을 #ops로 통일

> **요약:** 2026-11-10 결정. 알림은 `#ops`만 사용한다.

## 대상, 전제
- 적용: 프로덕션, 스테이징 알림 봇

## 본문
- 결정: `#ops` 단일화
- 근거: 채널 분산으로 미확인 알림 발생
- 대안 기각: 서비스별 채널 (노이즈, 권한 관리 비용)
- 후속: 기존 웹훅 이전 (담당 TBD)

## 관련 링크
- 회의록: 2026-11-10 배포 점검
```
