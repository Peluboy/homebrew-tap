cask "filedocket" do
  version "1.2.0"
  sha256 "9c17e654b12f72a5a12237cd7d75760d5ba6fb2b23f9cdb773c96af9786ed5bb"

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
