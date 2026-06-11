cask "planton-desktop" do
  version "v0.0.31-desktop.20260611.3"
  sha256 "41a976a8345ee9a4f4e70a5ad6a7100c1dcb7c71e06b7f1dc2b07cf8247de604"

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
