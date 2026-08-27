cask "filedocket" do
  version "1.2.0"
  sha256 "620d8e7c1e615627b792352a80aab2163fdb23c46d6942a08c575f5a8e5548c1"
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
