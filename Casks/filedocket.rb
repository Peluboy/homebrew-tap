cask "filedocket" do
  version "1.2.0"
  sha256 "cf675c21f82321e14ea5b57d91f1b0746d0289f66be6c148084ef607a1d13e9a"

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
