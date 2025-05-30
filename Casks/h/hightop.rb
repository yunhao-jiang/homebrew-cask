cask "hightop" do
  version "1.3.9"
  sha256 "50827f23f29358e9e31cf34a612a43cae26b5cf3f4a1eb0b030a2594f095b7d2"

  url "https://hightop.app/downloads/HighTop#{version}.dmg"
  name "HighTop"
  desc "File access via the menu bar"
  homepage "https://hightop.app/"

  livecheck do
    url "https://hightop.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "HighTop.app"

  uninstall quit: "com.knollsoft.HighTop"

  zap trash: [
    "~/Library/Application Scripts/com.knollsoft.HighTopLauncher",
    "~/Library/Application Support/HighTop+",
    "~/Library/Caches/com.knollsoft.HighTop",
    "~/Library/Containers/com.knollsoft.HighTopLauncher",
    "~/Library/Cookies/com.knollsoft.HighTop.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.HighTop",
    "~/Library/HTTPStorages/com.knollsoft.HighTop.binarycookies",
    "~/Library/Preferences/com.knollsoft.HighTop.plist",
    "~/Library/Saved Application State/com.knollsoft.HighTop.savedState",
  ]
end
