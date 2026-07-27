cask "planton-os-desktop" do
  version "v0.0.34-desktop.20260727.0"
  sha256 "eac03cc289ba24806a944ff93713d9539f2e93c0f399f8738de5c473d8278dd8"

  url "https://downloads.planton.ai/client-apps/planton-os/desktop/#{version}/planton-os-desktop-#{version}-universal-macos.dmg"
  name "Planton OS"
  desc "Planton OS — native app for the Planton company OS"
  homepage "https://planton.ai"

  app "Planton OS.app"

  zap trash: [
    "~/Library/Application Support/ai.planton.companyos.desktop",
    "~/Library/Caches/ai.planton.companyos.desktop",
    "~/Library/Logs/ai.planton.companyos.desktop",
  ]
end
