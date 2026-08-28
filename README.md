# FileDocket Homebrew Tap

Install [FileDocket](https://github.com/Peluboy/FileDocket) with Homebrew:

```bash
curl -fsSL https://peluboy.github.io/FileDocket/install.sh | bash
```

That script uses Homebrew when `brew` is on PATH, otherwise it downloads the DMG. It always runs `xattr -cr` so first launch does not depend on Open Anyway.

Homebrew only: `brew install --cask peluboy/tap/filedocket`

Uninstall:

```bash
brew uninstall --cask peluboy/tap/filedocket
```

Remove settings and launch agents as well:

```bash
brew uninstall --cask --zap peluboy/tap/filedocket
```

Requires macOS 12 or later (Intel and Apple Silicon). The app is not notarized. Homebrew strips quarantine on install. If a DMG install is blocked: open once, click Done, then System Settings → Privacy & Security → Security → Open Anyway. Or run `xattr -cr /Applications/FileDocket.app`.
