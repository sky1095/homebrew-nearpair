# homebrew-nearpair

Homebrew tap for [NearPair](https://nearpair.app), a menu-bar app for Bluetooth
accessory pairing, battery monitoring and equalizing on the Mac.

## Install

```
brew install sky1095/nearpair/nearpair
```

or tap first, then install:

```
brew tap sky1095/nearpair
brew install --cask nearpair
```

## Updating the cask

The cask tracks [nearpair.app/updates/appcast.xml](https://nearpair.app/updates/appcast.xml) —
the same Sparkle feed the app's own auto-updater polls — so `brew livecheck`
picks up new releases automatically. After a new version ships from the main
repo's `release.sh`, bump `version` and `sha256` here to match.

NearPairMac itself is closed-source, so this tap points `url` at the public
DMG the website serves rather than a GitHub release asset.
