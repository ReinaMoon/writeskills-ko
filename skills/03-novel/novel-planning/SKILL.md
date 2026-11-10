---
name: novel-planning
description: >
 소설을 쓰기 전 소재, 장르, 인물, 플롯, 작업 단위를 정해 기획안과 씬 골격, 인계를 만든다.
 "소설 써줘" 요청에도 본문으로 직행하지 않는다. 트리거: 소설 기획, 소설 구상, 소재 발굴,
 플롯, 인물 설계, 단편, 중편. 문체는 novel-voice, 집필은 novel-writing, 실용서 기획은
 book-planning을 쓴다.
---

# novel-planning

사전 설계. 본문, 파일럿 금지.

## 코어 참조

필수:
- `../../00-core/handoff/pipeline-convention.md`
- `../../00-core/style/mystyle-gate.md`
- `../../00-core/principles/writing-principles.md`

선택: `tone-matrix`, `quality-gates`, `handoff-schema`. 상세: `../../00-core/routing/core-ref-diet.md`

## 입력

씨앗(O). 분량 5단계. 시점, 시제 슬롯0. 형식(완결형|연재형).

## 연재형

신호: 연재, 웹소설, 회차, 시즌. 참조: `references/serial-format.md`

- 4단계 플롯을 회차표로: 회차당 사건 1, 끝 훅 1.
- 초반 3회에 주인공 욕망, 결핍, 첫 벽 노출.
- 회차 분량, 연재 주기 슬롯 추가. `series-schema` 회차 필드 사용.

## 워크플로

1 소재 > 2 장르, 톤 > 3 인물 > 4 플롯, 씬 > 5 작업 > 인계

직행 금지. 보기 3~6 > 확인.

1. What if > `[누가+상황+시도+벽]`
2. 톤 키워드, 참조(내용 명시)
3. 욕망, 결핍, 아크, 말투 예시
4. 3막 25/50/25, 씬 5~10
5. 1회 1,500~2,000자

`00-handoff.md` pipeline novel, 슬롯 0~6.

## 체인

```markdown
## 체인 상태
- pipeline: novel
- skill: novel-planning
- status: done
- next: novel-voice | novel-writing
- suggested_next: novel-voice
- reason: 보이스 규약 고정 후 집필
- handoff: 00-handoff.md
```

파일럿 후 novel-voice 안내.

## 규칙

줄거리 복제 금지. 압축 시 전제, 3막, 주인공 확정.

## 완성

전제, 3막, 씬, 작업단위, 슬롯0~4, 본문 없음

## 형제

novel-writing / novel-voice / book-planning
