cask "gh-switcher" do
  version "1.0.1"
  sha256 "d4c8e8965acd318cf0707c1b3906711082b770af15b6f1556a6b74de08ad9a22"

  url "https://github.com/willianrattis/gh-switcher/releases/download/v#{version}/GHSwitcher-#{version}.zip"
  name "GH Switcher"
  desc "Menu bar app to switch the active GitHub CLI account"
  homepage "https://github.com/willianrattis/gh-switcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "gh"
  depends_on macos: :ventura

  app "GHSwitcher.app"

  uninstall quit: "com.willianrattis.ghswitcher"

  zap trash: "~/Library/Preferences/com.willianrattis.ghswitcher.plist"
end
