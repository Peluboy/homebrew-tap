cask "filedocket" do
  version "1.2.2"
  sha256 "8e06f952aad3728b61613e528e5b271fc8ccf7dcfcc1662f05eaf49899493260"

  url "https://github.com/Peluboy/homebrew-tap/raw/refs/tags/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "Menu bar app that organizes your Downloads folder"
  homepage "https://peluboy.github.io/FileDocket"

  livecheck do
    skip "Version is bumped with the tap tag"
  end

  depends_on macos: :monterey

  app "FileDocket.app"

  # Ad-hoc signed; strip quarantine so first launch is not blocked by Gatekeeper.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/FileDocket.app"]
  end

  caveats <<~EOS
    FileDocket is not notarized. On macOS Sequoia and later, open the app
    once, click Done, then System Settings → Privacy & Security → Security
    → Open Anyway. Homebrew already strips quarantine, so this is often
    unnecessary.

    If Open Anyway never appears:
      xattr -cr /Applications/FileDocket.app
  EOS

  zap trash: [
    "~/.file-organizer",
    "~/Library/LaunchAgents/com.filedocket.login.plist",
    "~/Library/LaunchAgents/com.filedocket.organizer.plist",
  ]
end
