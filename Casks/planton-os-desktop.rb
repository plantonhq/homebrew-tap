cask "planton-os-desktop" do
  version "v0.0.34-desktop.20260727.1"
  sha256 "80e1da655a91347878cdbb8f692b1af51aebbaa0b195029a9c3ca9879c12e803"

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
