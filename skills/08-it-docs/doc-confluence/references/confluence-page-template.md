# 팀 위키 페이지 유형 템플릿

`doc-confluence` Step 1~4에서 사용한다. Confluence/Notion/사내 위키 공통.

## 유형 선택

| 유형 | 쓸 때 | 본문 골격 |
|------|-------|-----------|
| how-to | 따라 하기 | 전제 > 단계 > 검증 > 문제 해결 |
| reference | 개념, 설정 설명 | 개요 > 필드/동작 > 예시 > 제한 |
| decision | 합의, ADR 요약 | 맥락 > 선택지 > 결정 > 결과 |
| hub | 인덱스, 온보딩 | 이 공간이 다루는 것 > 시작 링크 > 역할별 경로 |

## how-to 본문

```markdown
## 대상, 전제
## 단계
1. …
## 검증
## 문제 해결
```

## reference 본문

```markdown
## 대상, 전제
## 개요
## 구성, 필드
## 예시
## 제한, 주의
```

## decision 본문

```markdown
## 맥락
## 선택지
## 결정
## 결과, 후속
```

## hub 본문

```markdown
## 이 공간이 다루는 것 / 다루지 않는 것
## 5분 시작
## 역할별 경로
## 주요 문서
```

## 라벨 관례 (예시, 팀 표준 우선)

- `runbook`, `onboarding`, `architecture`, `decision`, `owner-{team}`

## 파일명

`page-{slug}.md` 또는 게시 제목과 동일한 파일명
