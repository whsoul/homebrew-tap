# Homebrew tap for Kaflow Search

This tap installs [Kaflow Search](https://github.com/whsoul/kaflow-search), a desktop search engine for locally indexed Kafka messages.

## Install

Kaflow Search requires macOS 11 (Big Sur) or later. Homebrew automatically selects the Apple Silicon or Intel DMG for the current Mac.

```bash
brew install --cask whsoul/tap/kaflow-search
```

To uninstall:

```bash
brew uninstall --cask whsoul/tap/kaflow-search
```

## First launch on macOS

Kaflow Search is not yet signed with an Apple Developer certificate or notarized. On first launch, macOS may show:

> "Kaflow Search" can't be opened because Apple cannot check it for malicious software.

Use macOS's built-in approval flow:

1. Launch Kaflow Search from Applications and click **OK** when macOS blocks it.
2. Open **System Settings > Privacy & Security**.
3. Under **Security**, click **Open Anyway**, then confirm the next prompt.

The **Open Anyway** button appears only after macOS has blocked a launch. Some setups may ask twice; repeat the same System Settings approval if needed. Exact wording varies by macOS version.

This tap does not remove quarantine attributes, disable Gatekeeper, or change macOS security settings.

## Updating the cask for a new release

1. Publish both macOS DMGs and `SHA256SUMS` in the Kaflow Search GitHub Release.
2. In `Casks/kaflow-search.rb`, update `version`.
3. Copy the Apple Silicon (`macOS_arm64.dmg`) and Intel (`macOS_intel.dmg`) SHA-256 values from that release's `SHA256SUMS` into the matching `sha256 arm:` and `sha256 intel:` fields.
4. Verify the URLs and checksums, then run:

   ```bash
   brew audit --cask --online kaflow-search
   brew install --cask kaflow-search
   brew uninstall --cask kaflow-search
   ```

Release downloads must come from the official [Kaflow Search releases](https://github.com/whsoul/kaflow-search/releases).
