cask "no-rush" do
  version "0.12.0"
  sha256 "0d3a4275281c2711faa1a9b6a9bfec62db6bd8c20c1dfc083a185edcf132e457"

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
