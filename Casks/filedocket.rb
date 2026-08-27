cask "filedocket" do
  version "1.2.0"
  sha256 "aacdfce3ba4be456f65dde6ef0e19715f69290f2aec75f1049bef2a4fd38c101"

  url "https://github.com/Peluboy/FileDocket/releases/download/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "Automatic downloads folder organizer for macOS"
  homepage "https://peluboy.github.io/FileDocket"

  depends_on macos: ">= :monterey"

  app "FileDocket.app"

  zap trash: [
    "~/Library/LaunchAgents/com.filedocket.organizer.plist",
    "~/.file-organizer",
  ]
end
