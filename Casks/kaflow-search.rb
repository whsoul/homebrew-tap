cask "kaflow-search" do
  arch arm: "arm64", intel: "intel"

  version "0.1.3"
  sha256 arm:   "ca1e1f4e663341a829b0f3cf123d652a3684697cb34007467f2098b6cdf19be7",
         intel: "d5709f039fb65b421c6318cfc89434ef94bce09e19eda3ff97aca459fc77e4f6"

  url "https://github.com/whsoul/kaflow-search/releases/download/v#{version}/Kaflow-Search_#{version}_macOS_#{arch}.dmg"
  name "Kaflow Search"
  desc "Desktop search engine for locally indexed Kafka messages"
  homepage "https://github.com/whsoul/kaflow-search"

  depends_on macos: ">= :big_sur"

  app "Kaflow Search.app"

  caveats <<~EOS
    Kaflow Search is not yet signed with an Apple Developer certificate or notarized.
    On first launch, macOS may say it cannot check the app for malicious software.

    To allow it without changing or bypassing macOS security settings:
      1. Launch Kaflow Search from Applications and click OK when macOS blocks it.
      2. Open System Settings > Privacy & Security.
      3. Under Security, click Open Anyway and confirm the next prompt.

    The Open Anyway button appears only after macOS has blocked a launch. Some setups
    may ask twice; repeat the same System Settings approval if needed. Exact wording
    varies by macOS version.
  EOS
end
