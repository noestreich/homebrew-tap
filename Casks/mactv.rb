cask "mactv" do
  version "1.8"
  sha256 "243a4c4101d8fce065af4c654cbf3d89da56e4f48835cb88d40c682644256c27"

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
