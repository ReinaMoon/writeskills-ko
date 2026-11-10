---
name: novel-voice
description: >
 파일럿 원고를 진단해 소설 문체 규약(style-guide.md)을 만든다. 작가를 먼저 고르지 않고
 형식 속성만 참고하며, 작가 문장 복제, 인용은 하지 않는다. 트리거: 소설 문체, 보이스,
 스타일 가이드, 톤 레퍼런스, 문체 규약. 기획은 novel-planning, 집필은 novel-writing을 쓴다.
---

# novel-voice

파일럿 기반 `style-guide.md`. 원고 없으면 novel-writing 파일럿 먼저.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`

선택: `tone-matrix`, `quality-gates`, `handoff-schema`. 상세: `../../00-core/routing/core-ref-diet.md`

예시: `examples/voice-axes-sample.md`

## 입력

파일럿(O). 기획, 장르 권장. 선호 작가 선택.

## 워크플로

1. 7축 진단, 원고 미수정
2. 형식 유사 작가명 0~2(선택). 줄거리 선정 금지
3. 속성 분해. **문장 인용, 모사 금지**
4. 차용/유지/버림 + 금지. 가이드에 작가명 금지
5. 샘플 before/after. 닮음 시 유지 쪽 복귀

7축: 문장길이, 시점, 거리, 감각, 대화비, 리듬, 종결, 어조, 온도.

## 체인

```markdown
## 체인 상태
- pipeline: novel
- skill: novel-voice
- status: done
- next: novel-writing
- suggested_next: novel-writing
- reason: 규약 적용해 씬 집필
- handoff: style-guide.md
```

## 규칙

이 작품 규약. "○○처럼" 금지. 파일럿 미수정.

## 완성

7축, 금지, 검증 샘플, 작가문장 없음, 체인

## 형제

novel-writing / book-editing(소설 모드)
