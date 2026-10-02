cask "kaflow-search" do
  arch arm: "arm64", intel: "intel"

  version "0.1.4"
  sha256 arm:   "60fe106db1e758f5e71b4a07822aadcadd3faea38fd7fd8beb04be0c2a523a69",
         intel: "1b2e0504e3c9e36a84b13bbf472d42c8392494f772c636295e56063c2c271cf4"

  url "https://github.com/whsoul/kaflow-search/releases/download/v#{version}/Kaflow-Search_#{version}_macOS_#{arch}.dmg"
  name "Kaflow Search"
  desc "Desktop search engine for locally indexed Kafka messages"
  homepage "https://github.com/whsoul/kaflow-search"

  depends_on macos: :big_sur

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
