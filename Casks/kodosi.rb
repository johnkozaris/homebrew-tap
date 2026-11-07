cask "kodosi" do
  version "0.4.0"
  sha256 "a79d9ae36c0ef7baf3128fbdf8f42907c7a393d86ea691450b04bb403290a5ee"

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
