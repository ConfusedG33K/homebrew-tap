cask "no-rush" do
  version "0.15.0"
  sha256 "5a32944330bb962b93f49caf5433e6979ff533b55c29e4417e40f1411dab30e8"

  url "https://github.com/amone-labs/no-rush/releases/download/v#{version}/no-rush_universal.dmg"
  name "No Rush"
  desc "Menubar app that plays pure nature soundscapes for focus, rest, and sleep"
  homepage "https://no-rush.app/"

  depends_on :macos

  app "No Rush.app"

  zap trash: [
    "~/Library/Application Support/com.norush.desktop",
    "~/Library/Caches/com.norush.desktop",
    "~/Library/Preferences/com.norush.desktop.plist",
    "~/Library/Saved Application State/com.norush.desktop.savedState",
    "~/Library/WebKit/com.norush.desktop",
  ]
end
