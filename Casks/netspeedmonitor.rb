cask "netspeedmonitor" do
  version "1.260115.1"
  sha256 "78c2cbadb10b2cd7a536613b721bcbc276fa997e15c96d4aebe0aeb0a075dec2"

  url "https://github.com/guerrerocarlos/NetSpeedMonitor/releases/download/v1.260115.1/NetSpeedMonitor.zip"
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
