cask "planton-desktop" do
  version "v0.0.32-desktop.20260616.0"
  sha256 "a63d5d69d4fb71a9c18c59ef1316b3894da7074ae7b8d8ec3d19099737198262"

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
