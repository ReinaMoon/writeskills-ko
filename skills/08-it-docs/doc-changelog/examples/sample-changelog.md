# 1.4.0 — 2026-11-10

카나리 게이트와 롤백 훅을 추가한다.

## Features
- Added canary gate on error-rate and p99 latency.

## Fixes
- Fixed rollback hook targeting only new pods.

## Migration
- Set `CANARY_PERCENT=5` in deploy env. See runbook.
