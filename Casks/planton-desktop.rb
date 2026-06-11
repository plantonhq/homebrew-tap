cask "planton-desktop" do
  version "v0.0.31-desktop.20260611.7"
  sha256 "96a7469271e24dfaa40b3abb53fde52bfbd7b05f4a24f1a2c12ca10c890282a2"

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
