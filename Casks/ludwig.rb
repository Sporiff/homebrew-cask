cask "ludwig" do
  version "2.1.9"
  sha256 "37c447ba4398c10b2e2c1b1a80fc371e471c8c446d935794a985350a051a964c"

  url "https://desktop.ludwig.guru/download/#{version}/osx_64"
  name "ludwig"
  desc "Sentence search engine app that helps you write better English"
  homepage "https://ludwig.guru/"

  livecheck do
    url "https://desktop.ludwig.guru/download/latest/osx_64"
    strategy :header_match
  end

  app "Ludwig.app"

  zap trash: [
    "~/Library/Application Support/Ludwig",
    "~/Library/Caches/guru.ludwig",
    "~/Library/Caches/guru.ludwig.ShipIt",
    "~/Library/Logs/Ludwig",
    "~/Library/Preferences/guru.ludwig.plist",
    "~/Library/Saved Application State/guru.ludwig.savedState",
  ]
end
