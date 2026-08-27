cask "filedocket" do
  version "1.2.0"
  sha256 "79e8363db813fa6f6b50a3bc58baf43db878f495c4d84db133660e4a602ad612"

  url "https://github.com/Peluboy/FileDocket/releases/download/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "Menu bar app that organizes your Downloads folder"
  homepage "https://peluboy.github.io/FileDocket"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "FileDocket.app"

  zap trash: [
    "~/.file-organizer",
    "~/Library/LaunchAgents/com.filedocket.login.plist",
    "~/Library/LaunchAgents/com.filedocket.organizer.plist",
  ]
end
