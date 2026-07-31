cask "mactv" do
  version "1.8"
  sha256 "280626a63ca8d0e524409511ff5a3c691d9966cefa60cbc51ca800254c7f8279"

  url "https://github.com/noestreich/mactv/releases/download/v#{version}/MacTV-#{version}.zip",
      verified: "github.com/noestreich/mactv/"
  name "MacTV"
  desc "Menu bar app for watching German live TV streams"
  homepage "https://github.com/noestreich/mactv"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MacTV.app"

  zap trash: [
    "~/Library/Preferences/com.aketo.mactv.plist",
    "~/Library/Saved Application State/com.aketo.mactv.savedState",
    "~/Library/WebKit/com.aketo.mactv",
  ]
end
