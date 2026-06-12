cask "planton-desktop" do
  version "v0.0.31"
  sha256 "75aa9a2b8c45ad58bd189e24089a843a1dcddf4b360739b8d6e19407af5e3708"

  url "https://downloads.planton.ai/client-apps/planton/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — native app for the Planton cloud platform"
  homepage "https://planton.ai"

  app "Planton.app"

  zap trash: [
    "~/Library/Application Support/ai.planton.desktop",
    "~/Library/Caches/ai.planton.desktop",
    "~/Library/Logs/ai.planton.desktop",
  ]
end
