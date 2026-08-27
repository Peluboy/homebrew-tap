cask "filedocket" do
  version "1.2.0"
  sha256 "949f572f654a841c9ae1c6eef5f072d2c6054c9019e1a3d79509d8978a5a3114"
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
