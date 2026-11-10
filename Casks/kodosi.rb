cask "kodosi" do
  version "0.4.1"
  sha256 "f01c15596b0d65479ecd0d87457b5586d4a0a8054f24f3b54294e86b3659ebd9"

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
