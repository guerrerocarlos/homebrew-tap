cask "netspeedmonitor" do
  version "1.260115.7"
  sha256 "82181bbe83abefbaa9a0ab587c89ebc48aaa4cfac162780696cfaa37df163563"

  url "https://github.com/guerrerocarlos/NetSpeedMonitor/releases/download/v1.260115.7/NetSpeedMonitor.zip"
  name "NetSpeed Monitor"
  desc "macOS menu bar application that displays real-time network upload/download speeds"
  homepage "https://github.com/guerrerocarlos/NetSpeedMonitor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates false
  depends_on macos: ">= :sonoma"

  app "NetSpeedMonitor.app"

  zap trash: [
    "~/Library/Preferences/com.r3js.netspeedmonitor.plist",
    "~/Library/Saved Application State/com.r3js.netspeedmonitor.savedState",
  ]
end
