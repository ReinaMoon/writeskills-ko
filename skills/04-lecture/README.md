# 04-lecture: 기술 강의, 워크숍

사내 교육, 온보딩 세션, 외부 기술 강의를 위한 5스킬입니다.  
기준 산출물은 **마크다운 슬라이드 스펙**. pptx는 요청 시에만.

## 스킬 목록

| 스킬 | 목적 | 언제 쓰나 | 예시 |
|------|------|-----------|------|
| [lecture-plan](./lecture-plan/SKILL.md) | 대상, 목표, 시간, 꼭지 | 세션을 처음 짤 때 | |
| [lecture-research](./lecture-research/SKILL.md) | 사례, 수치, 실습 소재 | 기획 확정 후 | |
| [lecture-blueprint](./lecture-blueprint/SKILL.md) | 1장 1메시지 | 조판 전 드리프트 방지 | `examples/drift-check.md` |
| [lecture-slides](./lecture-slides/SKILL.md) | MD 스펙 (±pptx) | 덱 생성 | |
| [lecture-review](./lecture-review/SKILL.md) | 흐름, 분량, QA | 덱 점검 | `examples/scorecard-sample.md` |

## 체인

```
lecture-plan → lecture-research → lecture-blueprint
  → lecture-slides → lecture-review → (image-content?)
```

범용 조사만이면 `../05-research/research-topic`. 교안 슬롯이면 `lecture-research`.

## 이 카테고리 범위 밖

- 특정 LMS/화상회의 UI
- 자동 자막, 더빙 파이프라인
