cask "kaflow-search-demo" do
  arch arm: "arm64", intel: "intel"

  version "0.1.3"
  sha256 arm:   "15eed9a019a52924c3af3636c11f86d675d1fc30b2f56fa3761337abb1553e21",
         intel: "17bf877d032eb665d76dd2b771150bcafe64b5b87ff1cf918ca08e2965e0b219"

  url "https://github.com/whsoul/kaflow-search/releases/download/demo-v#{version}/Kaflow-Search-Demo_#{version}_macOS_#{arch}.dmg"
  name "Kaflow Search Demo"
  desc "Kaflow Search running on bundled sample data, with no Kafka cluster needed"
  homepage "https://github.com/whsoul/kaflow-search"

  depends_on macos: :big_sur

  app "Kaflow Search Demo.app"

  caveats <<~EOS
    This is a demo build. It never connects to Kafka: whatever address you enter on
    the connect screen, it runs on seven sample topics compiled into the binary. The
    sample data is already loaded, so it does not index anything either.

    It installs alongside the real app rather than replacing it — different app name,
    different bundle id — and it does not touch the real app's data directory. For
    the product build that connects to a cluster: brew install --cask kaflow-search

    Kaflow Search Demo is not signed with an Apple Developer certificate or notarized.
    On first launch, macOS may say it cannot check the app for malicious software.

    To allow it without changing or bypassing macOS security settings:
      1. Launch Kaflow Search Demo from Applications and click OK when macOS blocks it.
      2. Open System Settings > Privacy & Security.
      3. Under Security, click Open Anyway and confirm the next prompt.

    The Open Anyway button appears only after macOS has blocked a launch. Some setups
    may ask twice; repeat the same System Settings approval if needed. Exact wording
    varies by macOS version.
  EOS
end
