cask "rune" do
  version "0.13.0"
  sha256 "1db4dda8b7dfccd57e6d02b3322142c11b46656c32b707ab223a047e50e9af54"

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
