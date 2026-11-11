# WriteSkills ChatGPT 플러그인 (zip)

Claude용 zip(`scripts/package-skill.ps1`)과는 형식이 다릅니다.  
ChatGPT 플러그인 zip은 맨 위에 `plugin.json`과 `skills/스킬이름/SKILL.md`가 있어야 합니다.

다시 만드는 명령 (저장소 루트):

```bash
python3 scripts/package-chatgpt-plugin.py
```

결과: `dist/chatgpt/*.zip`  
미리 만든 파일은 [v0.1.0 릴리스](https://github.com/ReinaMoon/writeskills-ko/releases/tag/v0.1.0)에 있습니다.
