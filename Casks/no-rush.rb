cask "no-rush" do
  version "0.14.1"
  sha256 "4e390be625379340c85e161e29526d741c0147a46a9c2d210bb446d308d9ae1d"

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
