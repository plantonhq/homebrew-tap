cask "planton-desktop" do
  version "v0.0.31-desktop.20260611.5"
  sha256 "6b4c7b2ea02fa954aba9240d50d463a07ad3138e3b2e9bb54c7c4123a43785c8"

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
