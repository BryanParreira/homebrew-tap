cask "rune" do
  version "0.17.0"
  sha256 "381b7db7e107b99a8ce2519a1bf8d6ce253dd078e408bd75e7f1c96cce3cbeca"

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
