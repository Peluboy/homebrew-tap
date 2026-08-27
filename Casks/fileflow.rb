cask "fileflow" do
  version "1.2.0"
  sha256 "07122774384e207c61b855c65be1cc1dbb111417e708c9bb9965a34d71cbc2de"

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
