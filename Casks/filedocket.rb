cask "filedocket" do
  version "1.2.0"
  sha256 "731b8c88ef21d87247ebdd65bf5ff8464648c0f1e428285d2586ec8062f3b52d"
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
