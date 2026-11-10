# 기여 가이드

WriteSkills는 한국어로 일하고 쓰는 사람들의 절차를 모읍니다. 이런 기여를 환영합니다.

| 기여 | 난이도 | 어디에 |
|------|--------|--------|
| 오타, 링크 수정 | 쉬움 | 아무 파일 |
| AI 말투 패턴 제보 | 쉬움 | `skills/00-core/principles/ai-tone-patterns.md` |
| 맞춤법, 번역투 사례 추가 | 쉬움 | `skills/10-edit/edit-proofread/references/` |
| 예시(examples) 추가 | 보통 | 각 스킬 `examples/` |
| 면접 질문, 직군별 질문 은행 | 보통 | `skills/11-career/career-interview/references/question-bank.md` |
| 새 스킬 | 어려움 | 이슈로 먼저 제안 |

패턴만 추가하는 기여가 가장 많습니다. 아래 순서대로 하면 됩니다.

## 패턴을 추가하는 방법

이슈로 "이런 문장이 AI 티 난다"만 적어도 됩니다. 직접 고치려면 표에 행 하나를 넣고 PR을 보내면 됩니다. 기존 행의 ID와 문장은 바꾸지 않습니다. 다른 스킬과 예시가 그 ID를 가리키기 때문입니다.

### 1. AI 말투 패턴

파일: [`skills/00-core/principles/ai-tone-patterns.md`](./skills/00-core/principles/ai-tone-patterns.md)

`edit-de-ai`와 문장 게이트가 이 표를 기준으로 진단합니다.

| 묶음 | ID | 무엇을 넣나 |
|------|----|-------------|
| 어휘 | V | 단어 선택 (과장, 상투 동사) |
| 문장 | S | 문장 골격 (나열, 수사 의문문) |
| 구조 | T | 글 전체 (서론 반복, 격려 마무리) |
| 한국어 | K | 한국어에서 특히 자주 나오는 습관 |

새 ID는 그 묶음의 마지막 번호 다음입니다. 지금 V6이면 다음은 V7입니다. 중간 번호를 끼워 넣지 않습니다.

어휘, 문장 묶음은 4열입니다.

```markdown
| V7 | 패턴 이름 | 나쁜 예 1~3개 | 어떻게 고치나 |
```

구조, 한국어 묶음은 3열입니다.

```markdown
| K6 | 패턴 이름 | 어떻게 고치나 |
```

넣을 때 확인:

- 이미 있는 행과 같은 현상이면 그 행의 예만 보강합니다. 새 ID를 만들지 않습니다.
- 예는 짧은 구절입니다. 긴 글 전체는 `skills/10-edit/edit-de-ai/examples/`에 전후 예시로 추가할 수 있습니다.
- 고치는 방향은 "더 멋지게"가 아니라, 무엇을 지우거나 무엇으로 바꿀지입니다.

### 2. 맞춤법, 띄어쓰기, 외래어

파일: [`skills/10-edit/edit-proofread/references/common-errors.md`](./skills/10-edit/edit-proofread/references/common-errors.md)

해당 절(맞춤법, 띄어쓰기, IT 외래어 표기) 표 맨 아래에 한 행을 추가합니다.

```markdown
| 틀림 | 맞음 | 메모 |
| 몇일 | 며칠 | |
```

팀마다 갈리는 표기는 메모에 "팀 용어집 우선"이라고 적습니다. 표준을 단정하기 어려우면 행을 넣지 말고 이슈로 남깁니다.

### 3. 번역투

파일: [`skills/10-edit/edit-proofread/references/translationese.md`](./skills/10-edit/edit-proofread/references/translationese.md)

```markdown
| ~에 의해 수행된다 | ~가 한다 |
```

법률, 계약, 사양서처럼 그 표현이 더 정확한 경우는 행을 넣지 않습니다. 그 파일의 "판단 기준"에 이미 예외가 있습니다.

### 4. PR에 적을 것

패턴만 바꾼 PR은 스킬 검증 스크립트가 필요 없습니다. 설명에 다음만 있으면 됩니다.

- 왜: 어떤 글에서 이 패턴을 봤는지 (한 줄, 민감 정보 제거)
- 무엇: 추가한 ID 또는 표 행
- 겹침: 기존 ID로 충분하지 않은 이유

## 새 스킬 규칙

1. 폴더명 = frontmatter `name` (kebab-case, 카테고리 접두: `doc-`, `write-`, `edit-`, `career-` ...)
2. `description`에 `트리거:` 키워드와 형제 스킬 이름
3. `SKILL.md`는 짧게. 명사형/명령형, 상세는 `references/`
4. 코어는 복사하지 않고 `../../00-core/...` 상대경로로 참조
5. 끝에 체인 상태 블록 (`suggested_next` 포함). 형식: `skills/00-core/handoff/chain-status.md`
6. `examples/`에 입력 → 출력 1개 이상
7. 카테고리 README, `skills/README.md`, `trigger-map.md` 갱신
8. `bash scripts/validate-skill.sh <스킬 폴더>` 통과

## 문장 규칙

- 긴 대시, 세미콜론, 가운뎃점 대신 쉼표나 슬래시
- 슬로건, 과장 형용사 없이 운영 문장으로
- 특정 포털, 채용 사이트, 공모 양식 전용 내용은 넣지 않음 (플랫폼 중립)
- 실제 회사 기밀, 개인정보가 들어간 예시 금지. 예시 수치는 가상임을 전제로 작성

## PR 전에

```bash
bash scripts/validate-skill.sh skills/<카테고리>/<스킬>
```

Windows에서 zip만 확인할 때:

```powershell
.\scripts\package-skill.ps1 .\skills\<카테고리>\<스킬>
```

PR 설명은 `doc-pr` 스킬 형식(왜, 무엇, 검증, 위험)을 따르면 리뷰가 빠릅니다.

## 라이선스

기여한 내용은 [CC BY-SA 4.0](./LICENSE)으로 배포됩니다.
