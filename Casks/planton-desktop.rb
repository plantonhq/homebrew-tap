cask "planton-desktop" do
  version "v0.0.31-desktop.20260611.6"
  sha256 "6fdaa0dd7a0796141f7a4afde81401c52eba0512646bb3fac03ac8b88b0f9ea5"

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
