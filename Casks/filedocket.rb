cask "filedocket" do
  version "1.2.3"
  sha256 "90f91bee447dadf09553fe0fc97f027f845a87cc44e3280cfc80ebb19ef40d0e"

  url "https://github.com/Peluboy/homebrew-tap/raw/refs/tags/v#{version}/FileDocket.dmg"
  name "FileDocket"
  desc "Menu bar app that organizes your Downloads folder"
  homepage "https://peluboy.github.io/FileDocket"

  livecheck do
    skip "Version is bumped with the tap tag"
  end

  depends_on macos: :monterey

  app "FileDocket.app"

  uninstall quit: "io.peluboy.filedocket",
            launchctl: [
              "com.filedocket.login",
              "com.filedocket.organizer",
            ]

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
