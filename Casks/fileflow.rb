cask "fileflow" do
  version "1.2.0"
  sha256 "108ab82c17018629d7403978f064f77e8d33c55f488b7101eac02ee0011930fe"

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
