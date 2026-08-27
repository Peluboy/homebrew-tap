cask "filedocket" do
  version "1.2.0"
  sha256 "55f5409fb2e846cc290f99f80751dc310bdd332e7efc17cd4429ef7eb57d336a"
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
