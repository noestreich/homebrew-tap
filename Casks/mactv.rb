cask "mactv" do
  version "1.7.2"
  sha256 "cd4c639447f3ded7538207f685026b7ceedc41173ba20ca12e820a1234eb49d5"

  url "https://github.com/noestreich/mactv/releases/download/v#{version}/MacTV-#{version}.zip",
      verified: "github.com/noestreich/mactv/"
  name "MacTV"
  desc "Menu bar app for watching German live TV streams"
  homepage "https://github.com/noestreich/mactv"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "MacTV.app"

  zap trash: [
    "~/Library/Preferences/com.aketo.mactv.plist",
    "~/Library/Saved Application State/com.aketo.mactv.savedState",
    "~/Library/WebKit/com.aketo.mactv",
  ]
end
