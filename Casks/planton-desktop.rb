cask "planton-desktop" do
  version "v0.0.32-desktop.20260619.0"
  sha256 "6257523e81d24b5cc17391acbbbd91bbe94335f3bb5bed9fade131b4a90053e0"

  url "https://downloads.planton.app/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — free desktop app for your cloud infrastructure"
  homepage "https://planton.app"

  app "Planton.app"

  zap trash: [
    "~/Library/Application Support/ai.planton.desktop",
    "~/Library/Caches/ai.planton.desktop",
    "~/Library/Logs/ai.planton.desktop",
  ]
end
