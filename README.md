# FileDocket Homebrew Tap

Install [FileDocket](https://github.com/Peluboy/FileDocket) with Homebrew.

```bash
brew tap peluboy/tap
brew install --cask --no-quarantine filedocket
```

`brew tap peluboy/tap` clones this repository (`Peluboy/homebrew-tap`).

Requires macOS 12 or later. The app is not notarized. Homebrew strips quarantine on install. If macOS still blocks it, Control-click FileDocket in Applications → Open → Open. If Open Anyway never appears in Settings, run `xattr -cr /Applications/FileDocket.app` then Control-click Open again.
