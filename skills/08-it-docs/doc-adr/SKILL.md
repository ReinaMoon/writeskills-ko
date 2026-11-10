---
name: doc-adr
description: >
 아키텍처 결정 기록(ADR). Context, Decision, Consequences 고정.
 트리거: ADR, 아키텍처 결정, 설계 결정, architecture decision.
 프로젝트북 doc-project-book, RFC doc-rfc, 런북 doc-runbook.
---

# doc-adr

결정 1건 = ADR 1파일. 논쟁 재현 금지, 결정과 결과만.

## 코어 참조

필수: `tone-matrix`, `korean-prose-rules`, `quality-gates`  
선택 → `../../00-core/routing/core-ref-diet.md`  
템플릿: `references/adr-template.md`  
예시: `examples/sample-adr.md`

## 입력

제목(O), 상태(proposed|accepted|deprecated|superseded), 맥락, 선택지, 결정, 결과.

## 워크플로

1. 상태·제목 확정. 추측 금지.
2. Context → Options(요약) → Decision → Consequences(득/실).
3. 관련 링크(프로젝트북, RFC, 이슈).
4. 체인 상태.

## 출력

`ADR-NNNN-slug.md`

```markdown
## 체인 상태
- pipeline: it-docs
- skill: doc-adr
- status: done
- next: doc-project-book | doc-rfc | doc-runbook | none
- suggested_next: doc-project-book
- reason: 결정을 기준 문서에 링크
```

## 규칙

- 한 ADR에 결정 여러 개 금지.
- 미결정이면 proposed + 미결 질문.
- 수치 없으면 `[TODO-FACT]`.

## 완성

상태, 4절, 링크 또는 TBD, 체인

## 형제

doc-rfc / doc-project-book / doc-runbook / research-report
