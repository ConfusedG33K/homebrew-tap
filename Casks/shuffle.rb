cask "shuffle" do
  version "0.5.3"
  sha256 "cf877b8dbd5f8954cfa42c1590bebe5819bccfd26f2094fc7580163e0620ef8e"

  url "https://github.com/WizenPainter/shuffle/releases/download/v#{version}/Shuffle-#{version}.dmg"
  name "Shuffle"
  desc "GPU-rendered file manager"
  homepage "https://www.shuffleapp.co/"

  auto_updates true
  depends_on macos: :monterey

  app "Shuffle.app"

  zap trash: [
    "~/Library/Application Support/Shuffle",
    "~/Library/Caches/com.shuffle.app",
    "~/Library/Preferences/com.shuffle.app.plist",
    "~/Library/Saved Application State/com.shuffle.app.savedState",
  ]
end
