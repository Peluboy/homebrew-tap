cask "fileflow" do
  version "1.2.0"
  sha256 "730155aa13f269815189562d604ba11c4c5b6615ef9df26f2519914d86a0af05"

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
