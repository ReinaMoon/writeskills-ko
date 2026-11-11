# WriteSkills ChatGPT 플러그인 (zip)

Claude용 zip(`scripts/package-skill.ps1`)과는 형식이 다릅니다.  
ChatGPT 플러그인 zip은 맨 위에 `plugin.json`과 `skills/스킬이름/SKILL.md`가 있어야 합니다.

다시 만드는 명령 (저장소 루트):

```bash
python3 scripts/package-chatgpt-plugin.py
```

결과: `dist/chatgpt/*.zip`  
미리 만든 파일은 [v0.1.0 릴리스](https://github.com/ReinaMoon/writeskills-ko/releases/tag/v0.1.0)에 있습니다.

| zip | 내용 |
|-----|------|
| `writeskills-ko.zip` | 스킬 47개 |
| `writeskills-ko-it.zip` | 회의, 런북, ADR, RFC, API, changelog, 장애 회고, PR |
| `writeskills-ko-blog.zip` | write-blog |
| `writeskills-ko-novel.zip` | 소설 4개 + book-editing |
| `writeskills-ko-career.zip` | 이력서, 자소서, 면접 |
| `writeskills-ko-edit.zip` | AI 말투, 맞춤법 |

각 스킬 안에 `00-core`를 `references/core/`로 넣어 두었습니다. 상대 경로 `../../00-core/`는 플러그인 안에서는 동작하지 않기 때문입니다.

## 업로드

버튼이 보이는 계정만 됩니다. 워크스페이스 관리자이거나 플러그인 업로드 권한이 있어야 합니다.

1. ChatGPT 웹에서 **Admin console → Plugins → Add**
2. **Upload plugin**
3. zip 하나 선택

한 번에 여러 팩을 올리면 같은 종류의 스킬이 겹칩니다. 처음에는 `writeskills-ko-edit.zip`이나 `writeskills-ko-novel.zip` 하나만 올려 보세요. 전체가 필요하면 `writeskills-ko.zip` 하나만 올립니다.

공개 플러그인 디렉터리에 내리려면 업로드 뒤 심사가 있습니다. 본인 워크스페이스에서만 쓸 때는 심사 없이 둘 수 있습니다. 메뉴가 없으면 그 계정에서는 zip 업로드가 아직 열리지 않은 것입니다.

공식 안내: [Plugins in ChatGPT](https://help.openai.com/en/articles/20001256-plugins-in-chatgpt), [Package your plugin](https://developers.openai.com/plugins/build/plugins)

## 쓰는 방법

ChatGPT는 슬래시로 스킬을 고르지 않습니다. 대화에서 스킬 이름을 말합니다.

```text
novel-planning 규칙으로 연재형 회차표를 만들어 줘.
```

끝나면 체인 상태 블록의 `suggested_next`를 보고 다음 스킬 이름을 다시 말합니다. "리뷰만"이면 대체 원고 없이 진단만 합니다.

## Custom GPT, Project

플러그인 메뉴가 없을 때의 대체입니다. Custom GPT는 2026-12-11에 종료될 예정입니다.

1. GPT 또는 Project를 만듭니다.
2. Instructions에 팩 이름과 "한 번에 스킬 하나만, 끝나면 suggested_next"를 적습니다.
3. Knowledge에 그 팩의 `SKILL.md`, `references/`, `examples/`와 `skills/00-core/`의 원칙 파일을 올립니다. 폴더째 자동으로 연결되지 않으므로 파일을 직접 선택합니다.
