# Template for jonarcher/homebrew-tap's Casks/moose-diff.rb — that's a
# separate, public repository, not something this repo publishes source
# into. moose's own source stays private; the cask only ever holds a URL
# and a checksum. Scripts/release.sh renders this template and pushes it
# as part of a release — see docs/releasing.md; this file isn't edited by
# hand.

cask "moose-diff" do
  version "0.1.3"
  sha256 "ec114de841c13e0a4155fcc444df232baf5d5c629114e2036e2ed938e3bcc87f"

  url "https://jonarcher.github.io/moose-diff/Moose-Diff-#{version}.dmg"
  name "Moose Diff"
  desc "Purpose-built git diff review tool for macOS"
  homepage "https://moose-diff.jonarcher.com/"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Moose Diff.app"
  binary "#{appdir}/Moose Diff.app/Contents/MacOS/moose"

  zap trash: [
    "~/Library/Preferences/com.jonarcher.moose.plist",
    "~/.local/bin/moose"
  ]
end
