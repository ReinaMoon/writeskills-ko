## POST /v1/deployments/{id}/rollback

지정 배포를 이전 안정 버전으로 되돌린다.

### Request
- Headers: `Authorization: Bearer <token>`
- Path: `id` 배포 ID
- Body: `{ "reason": "error-rate" }`

### Response 200
```json
{ "status": "rolling_back", "target": "1.3.2" }
```

### Errors
| code | when |
|------|------|
| 409 | 이미 롤백 중 |
| 404 | 배포 없음 |
