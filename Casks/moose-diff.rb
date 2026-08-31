# Template for jonarcher/homebrew-tap's Casks/moose-diff.rb — that's a
# separate, public repository, not something this repo publishes source
# into. moose's own source stays private; the cask only ever holds a URL
# and a checksum. Scripts/release.sh renders this template and pushes it
# as part of a release — see docs/releasing.md; this file isn't edited by
# hand.

cask "moose-diff" do
  version "0.1.2"
  sha256 "edc56afcf9b390f19b986dbe7d0899b5933394b8387fe2fd97684cef29392b7c"

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
