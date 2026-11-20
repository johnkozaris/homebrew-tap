cask "kodosi" do
  version "0.4.6"
  sha256 "4fd16cb556ca18011bfdd52abe29661046b4cd4c9b96c519b2c7fe23b50fd2b5"

  url "https://github.com/johnkozaris/Kodosi/releases/download/v#{version}/Kodosi-#{version}.dmg"
  name "Kodosi"
  desc "Shared terminals and projects for people and their coding agents"
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
