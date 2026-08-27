cask "filedocket" do
  version "1.2.0"
  sha256 "79e8363db813fa6f6b50a3bc58baf43db878f495c4d84db133660e4a602ad612"

  url "https://github.com/Peluboy/homebrew-tap/raw/refs/tags/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "Menu bar app that organizes your Downloads folder"
  homepage "https://peluboy.github.io/FileDocket"

  livecheck do
    skip "Version is bumped with the tap tag"
  end

  depends_on macos: ">= :monterey"

  app "FileDocket.app"

  # Ad-hoc signed; strip quarantine so first launch is not blocked by Gatekeeper.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/FileDocket.app"]
  end

  caveats <<~EOS
    FileDocket is not notarized. If macOS says it cannot be opened, do not
    double-click. In Finder: Control-click FileDocket → Open → Open.

    If Open Anyway never appears in System Settings, run:
      xattr -cr /Applications/FileDocket.app
    then Control-click → Open again.
  EOS

  zap trash: [
    "~/.file-organizer",
    "~/Library/LaunchAgents/com.filedocket.login.plist",
    "~/Library/LaunchAgents/com.filedocket.organizer.plist",
  ]
end
