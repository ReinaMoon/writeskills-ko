# 로컬 노트 폴더 어댑터 (옵시디언 옵션)

위키, 강의, 리서치 산출물을 로컬 폴더에 쌓을 때의 **옵션** 규칙입니다. 
옵시디언, 특정 협업 IDE는 필수 전제가 아닙니다. 플러그인 없이 쓰려면 `plain-folder.md`를 본다.

---

## 1. 언제 쓰나

- 사용자가 “볼트/폴더에 저장”을 요청할 때
- 체인 산출물을 백링크로 이을 때
- wiki 페이지를 로컬에서 관리할 때

요청이 없으면 대화, 단일 MD 산출만으로 끝냅니다.

---

## 2. 권장 폴더 골격

```
{주제}/
 _MOC.md # 선택 인덱스
 handoff/ # 00-handoff.md
 research/ # RL_*.md
 drafts/
 final/
```

강의 예:

```
{강의명}/
 _MOC.md
 research/
 plan/
 slides/ # 스펙 MD (+ 선택 pptx)
 images/
 speak/ # 스크립트, 핸드아웃
```

폴더명: 30자 이내, 특수문자 최소화, 한글 허용.

---

## 3. YAML 최소 필드

```yaml
---
title: ""
date: YYYY-MM-DD
tags: [pipeline-name]
type: research | plan | handoff | draft | final | moc | …
status: draft | done
---
```

스킬 고유 필드는 각 스킬 규칙을 따릅니다.

---

## 4. 연결 블록 (선택)

본문 앞에 한 줄:

```markdown
> **연결**: [[이전]] → 이 문서 → [[다음]]
```

파일이 없으면 링크를 만들지 않습니다.

---

## 5. MOC

첫 저장 시 `_MOC.md`를 만들고, 이후 산출을 표로 갱신합니다. 
사용자가 “MOC 생략”이면 만들지 않습니다.

---

## 6. 위키와의 관계

- 페이지 스키마는 `handoff/wiki-page-schema.md`.
- 이 어댑터는 **저장 위치, 인덱스, 백링크**만 담당한다.
- 특정 앱 플러그인(dataview 등)은 있으면 활용, 없으면 수동 MOC.
