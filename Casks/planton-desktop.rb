cask "planton-desktop" do
  version "v0.0.32-desktop.20260619.0"
  sha256 "6257523e81d24b5cc17391acbbbd91bbe94335f3bb5bed9fade131b4a90053e0"

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
