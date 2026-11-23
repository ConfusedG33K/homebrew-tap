cask "no-rush" do
  version "0.13.0"
  sha256 "89304bcbaa583ee0ebf52ea3fdd2310058c7bb5816e6f6d2d22153179d49ba72"

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
