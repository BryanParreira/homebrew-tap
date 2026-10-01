cask "rune" do
  version "0.9.1"
  sha256 "6eb14e3c8956d1bd35f4c656c48b59bfa9552b6889bc9bcd7fd7e924c604be57"

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
