cask "fileflow" do
  version "1.2.0"
  sha256 "58bd1f49f58991b61603e5f08b4e202ab37492d82652a64f99284fd715aee2ed"

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
