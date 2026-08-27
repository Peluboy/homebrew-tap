# FileDocket Homebrew Tap

Install [FileDocket](https://github.com/Peluboy/FileDocket) with Homebrew:

```bash
brew install --cask peluboy/tap/filedocket
```

That one command taps this repo, trusts only the FileDocket cask, and installs it. If you previously tapped `peluboy/filedocket` as well, run `brew untap peluboy/filedocket` first.

Requires macOS 12 or later. The app is not notarized. If macOS blocks first launch, Control-click FileDocket in Applications → Open → Open, or run `xattr -cr /Applications/FileDocket.app`.
