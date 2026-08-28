# FileDocket Homebrew Tap

Install [FileDocket](https://github.com/Peluboy/FileDocket) with Homebrew:

```bash
brew install --cask peluboy/tap/filedocket
```

That one command taps this repo, trusts only the FileDocket cask, and installs it. Do not run `brew tap peluboy/filedocket`. If you already did, run `brew untap peluboy/filedocket` first.

Requires macOS 12 or later (Intel and Apple Silicon). The app is not notarized. Homebrew strips quarantine on install. If a DMG install is blocked: open once, click Done, then System Settings → Privacy & Security → Security → Open Anyway. Or run `xattr -cr /Applications/FileDocket.app`.
