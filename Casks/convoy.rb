cask "convoy" do
  version "2.0.0"
  sha256 "d9f8bf275e214e3495fc94c440b6c390600f3f711129c4e771b3590e63bdd95d"

  url "https://github.com/TheDynamicPunk/Convoy/releases/download/v#{version}/Convoy-#{version}.dmg"
  name "Convoy"
  desc "Native download manager"
  homepage "https://thedynamicpunk.github.io/"

  depends_on macos: :sonoma

  app "Convoy.app"

  zap trash: [
    "~/Library/Application Support/Convoy",
    "~/Library/Caches/io.github.thedynamicpunk.convoy",
    "~/Library/HTTPStorages/io.github.thedynamicpunk.convoy",
    "~/Library/Preferences/io.github.thedynamicpunk.convoy.plist",
  ]
end
