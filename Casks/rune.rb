cask "rune" do
  version "0.5.0"
  sha256 "69d0248ae7ee318e6e13ba96017943508ec4537f8ff4f6a5e9e3f1076a9f51d1"

  url "https://github.com/BryanParreira/Rune/releases/download/v#{version}/Rune-#{version}.dmg"
  name "Rune"
  desc "Native terminal with command blocks and private on-device AI"
  homepage "https://github.com/BryanParreira/Rune"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Rune.app"

  zap trash: [
    "~/.config/rune",
    "~/Library/Application Support/Rune",
    "~/Library/Caches/dev.rune.Rune",
    "~/Library/HTTPStorages/dev.rune.Rune",
    "~/Library/Preferences/dev.rune.Rune.plist",
    "~/Library/Saved Application State/dev.rune.Rune.savedState",
  ]
end
