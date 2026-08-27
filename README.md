# Peluboy Homebrew Tap

A Homebrew tap for installing [FileFlow](https://github.com/Peluboy/FileFlow) and other apps by Peluboy.

## Install

First, make sure you have [Homebrew](https://brew.sh) installed:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then tap this repo and install FileFlow:

```bash
brew tap peluboy/homebrew-tap
brew install --cask fileflow
```

## Updating

```bash
brew upgrade --cask fileflow
```

## Uninstalling

```bash
brew uninstall --cask fileflow
brew untap peluboy/homebrew-tap
```

## Notes

- Requires macOS 12 (Monterey) or later
- The app is unsigned (no Apple Developer account), so macOS will show a Gatekeeper warning on first launch. Right-click the app, select Open, then click Open in the dialog. You only need to do this once.
