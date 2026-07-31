# noestreich/homebrew-tap

Homebrew tap for [MacTV](https://github.com/noestreich/mactv) — a lightweight
macOS menu bar app for watching live German TV streams.

## Installation

```bash
brew install --cask noestreich/tap/mactv
```

Homebrew adds the tap automatically on first use. To update later:

```bash
brew upgrade --cask mactv
```

## Uninstall

```bash
brew uninstall --cask mactv
```

Add `--zap` to remove settings and cached data as well.

## Notes

The app is signed with an Apple Developer ID and notarized by Apple, so it
starts without a Gatekeeper warning. It runs on macOS 13 (Ventura) or newer,
on both Intel and Apple Silicon Macs.
