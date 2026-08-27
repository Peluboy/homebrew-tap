# Peluboy Homebrew Tap

A Homebrew tap for installing [FileDocket](https://github.com/Peluboy/FileDocket) and other apps by Peluboy.

## Install

First, make sure you have [Homebrew](https://brew.sh) installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then tap this repo and install FileDocket:

```bash
brew tap peluboy/homebrew-tap
brew install --cask filedocket
```

## Updating

```bash
brew upgrade --cask filedocket
```

## Uninstalling

```bash
brew uninstall --cask filedocket
brew untap peluboy/homebrew-tap
```

## Notes

- Requires macOS 12 (Monterey) or later
- The app is unsigned (no Apple Developer account), so macOS will show a Gatekeeper warning on first launch. Right-click the app, select Open, then click Open in the dialog. You only need to do this once.
