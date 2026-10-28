cask "gh-switcher" do
  version "1.0.0"
  sha256 "6dcf38f1efe3db5f208b0bb680d73967278d78c8d9c21e211415dc99e89edbf1"

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
