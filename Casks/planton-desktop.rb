cask "planton-desktop" do
  version "v0.0.31-desktop.20260611.4"
  sha256 "dbba3efd842e7eee3c0a827fcd7e5097599f5bde5892a199e3c482bb81cbf4f9"

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
