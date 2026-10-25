cask "kodosi" do
  version "0.3.0"
  sha256 "9e95eb5876cb92e2fd4feb459fd9644a602447249b31761b01becf85ddda481d"

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
