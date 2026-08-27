cask "filedocket" do
  version "1.2.0"
  sha256 "aeba0dfc720c6e90d80b577f7b05a6522f6a12a599aa56456f0bc136655c0516"
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
