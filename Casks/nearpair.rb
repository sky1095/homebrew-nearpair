cask "nearpair" do
  version "2.4.0,240"
  sha256 "9c42b6a85b6cda96df41c64e3488b4a01386663717b1642d0319afae5062dfac"

  url "https://nearpair.app/updates/NearPair-#{version.before_comma}.dmg"
  name "NearPair"
  desc "Nearby Bluetooth accessory detection, battery monitoring and equalizer"
  homepage "https://nearpair.app/"

  livecheck do
    url "https://nearpair.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "NearPair.app"

  zap trash: [
    "~/Library/Caches/dev.nearpair.mac",
    "~/Library/Caches/NearPair",
    "~/Library/HTTPStorages/dev.nearpair.mac",
    "~/Library/Preferences/dev.nearpair.mac.plist",
    "~/Library/Saved Application State/dev.nearpair.mac.savedState",
  ]
end
