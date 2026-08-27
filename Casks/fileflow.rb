cask "fileflow" do
  version "1.2.0"
  sha256 "0a8b6d62d4b30c7969cb0812a5a97520cd63ed9d9b2836870a0a90914215030d"

  url "https://github.com/peluboy/FileFlow/releases/download/v#{version}/FileFlow.dmg"
  name "FileFlow"
  desc "macOS menu bar app that automatically organizes your Downloads folder"
  homepage "https://github.com/peluboy/FileFlow"

  depends_on macos: :monterey

  app "FileFlow.app"

  zap trash: [
    "~/Library/Application Support/FileFlow",
    "~/Library/Preferences/com.fileflow.plist",
  ]
end
