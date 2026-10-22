cask "kodosi" do
  version "0.2.0"
  sha256 "66d90d2d99376b1e2310e5fec7d90fd195471d25a8e766a6d04e52094136d1e7"

  url "https://github.com/johnkozaris/Kodosi/releases/download/v#{version}/Kodosi-#{version}.dmg"
  name "Kodosi"
  desc "Shared terminals and rooms for people and their coding agents"
  homepage "https://kodosi.com"

  livecheck do
    url "https://updates.kodosi.com/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kodosi.app"
  binary "#{appdir}/Kodosi.app/Contents/MacOS/Kodosi", target: "kodosi"

  uninstall quit: "com.kodosi.desktop"
end
