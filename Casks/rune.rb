cask "rune" do
  version "0.10.2"
  sha256 "040075c41aeaaff90cb9f990853d5017927c07e8b3cfbcc799eccdad3cdcb709"

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
