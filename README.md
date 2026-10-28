# ziesski/homebrew-tap

Homebrew formulae for [kakao-max](https://github.com/ziesski/kakao-max).

```bash
brew install ziesski/tap/kakao-max
```

This installs the `kakao-max`, `kakao-max-mcp` and `kakao-max-web` commands from the published npm package,
along with Homebrew's current Node.js.

> [!WARNING]
> kakao-max is an unofficial project, not affiliated with or endorsed by Kakao. It signs in to your own
> KakaoTalk account, and any account restriction that follows is your responsibility. Try a separate account first.

The formula follows new npm releases on its own: the `bump` workflow checks npm every six hours, installs and
tests the new version on macOS, and only then commits it.
