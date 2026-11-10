---
name: doc-rfc
description: >
 팀 RFC/디자인 독 초안. 문제, 제안, 대안, 롤아웃, 미결.
 트리거: RFC, 디자인 독, design doc, 제안서(기술).
 ADR doc-adr, 프로젝트북 doc-project-book.
---

# doc-rfc

합의 전 제안 문서. ADR보다 길고, 결정은 ADR로 쪼갤 수 있다.

## 코어 참조

필수: `writing-principles`, `quality-gates`  
템플릿: `references/rfc-template.md`  
예시: `examples/sample-rfc-outline.md`

## 입력

문제(O), 제안, 제약, 대안, 롤아웃/롤백, 미결 질문.

## 워크플로

1. 제목, 상태(draft|review|accepted|rejected).
2. 문제 → 목표 → 제안 → 대안 → 롤아웃 → 리스크 → 미결.
3. 승인 후 결정은 `doc-adr`로 분리 권장.
4. 체인 상태.

## 출력

```markdown
## 체인 상태
- skill: doc-rfc
- suggested_next: doc-adr
- reason: 합의된 결정을 ADR로 고정
```

## 규칙

- 구현 코드 덤프 금지. 인터페이스/계약만.
- “나중에 정함”은 미결 절로.

## 형제

doc-adr / doc-project-book / research-report
