---
name: doc-api
description: >
 API 설명 MD. 엔드포인트, 요청/응답, 에러, 예제. OpenAPI는 선택.
 트리거: API 문서, 엔드포인트 설명, OpenAPI 초안, REST 문서.
 changelog doc-changelog, ADR doc-adr.
---

# doc-api

개발자가 읽으며 호출하는 MD가 기본. OpenAPI YAML은 요청 시만.

## 코어 참조

필수: `output-rules`, `quality-gates`  
템플릿: `references/api-endpoint-template.md`  
예시: `examples/sample-endpoint.md`

## 입력

서비스명(O), 베이스 URL, 인증, 엔드포인트 목록/스펙 메모.

## 워크플로

1. 개요(인증, 공통 헤더, 버전).
2. 엔드포인트별: Method Path, 설명, 요청, 응답, 에러.
3. 예제는 최소. 비밀값 금지.
4. OpenAPI 요청 시 별 파일. MD 우선.
5. 체인 상태.

## 출력

```markdown
## 체인 상태
- skill: doc-api
- suggested_next: doc-changelog
- reason: 버전 Breaking이면 릴리스 노트
```

## 규칙

- 추측 필드 금지. 모르면 `[TODO]`.
- 프로덕션 시크릿/실토큰 예시 금지.

## 형제

doc-changelog / doc-runbook / doc-adr
