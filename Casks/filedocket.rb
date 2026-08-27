cask "filedocket" do
  version "1.2.0"
  sha256 "5acc7f83e03a67848fe032b9c916936b47d1f83025d6235b2afae27aa3252433"

  url "https://github.com/peluboy/FileDocket/releases/download/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "macOS menu bar app that automatically organizes your Downloads folder"
  homepage "https://github.com/peluboy/FileDocket"

  depends_on macos: :monterey

  app "FileDocket.app"

  zap trash: [
    "~/Library/Application Support/FileDocket",
    "~/Library/Preferences/com.filedocket.plist",
  ]
end
