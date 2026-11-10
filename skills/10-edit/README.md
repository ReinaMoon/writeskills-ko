# 10-edit: 교정, AI 말투 다듬기

이미 쓴 글을 고치는 스킬 2개입니다.  
장르와 상관없이 블로그, 업무 문서, 자기소개서, 소설 원고 어디에나 붙일 수 있습니다.

AI로 초안을 쓰는 사람이 많아지면서 "AI가 쓴 티"가 오히려 신뢰를 깎는 경우가 늘었습니다.  
`edit-de-ai`는 그 습관을 **ID가 붙은 패턴 목록**으로 진단하고, 의미는 그대로 둔 채 말투만 바꿉니다.  
`edit-proofread`는 맞춤법, 띄어쓰기, 번역투, IT 외래어 표기를 잡습니다.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [edit-de-ai](./edit-de-ai/SKILL.md) | AI 말투 진단 + 사람 글로 수정 | AI 초안을 그대로 올리기 전 | `examples/before-after-blog.md` |
| [edit-proofread](./edit-proofread/SKILL.md) | 맞춤법, 띄어쓰기, 번역투, 표기 | 발행, 제출, 공지 직전 | `examples/proofread-sample.md` |

## 어떻게 다른가

| 질문 | 스킬 |
|------|------|
| "GPT가 쓴 것 같아요" | edit-de-ai |
| "맞춤법만 봐 주세요" | edit-proofread |
| "구성부터 다시" | book-editing |
| "고치지 말고 문제만" | edit-de-ai 진단 모드 (critique-only) |

## 체인

```
(아무 글쓰기 스킬) → edit-de-ai → edit-proofread → 발행/제출
```

두 스킬을 같이 쓸 때는 **de-ai 먼저, proofread 나중**입니다. 말투를 바꾸면 문장이 새로 생기기 때문입니다.

## 패턴 목록

진단 기준은 공유 코어 [`../00-core/principles/ai-tone-patterns.md`](../00-core/principles/ai-tone-patterns.md)에 있습니다.  
어휘(V), 문장(S), 구조(T), 한국어 특유(K) 4묶음, ID로 판정합니다. 다른 스킬도 문장 게이트에서 같이 씁니다.

## 이 카테고리 범위 밖

- 표절 검사, AI 탐지기 우회 보장
- 법률, 의료 문서의 전문 감수
