cask "planton-os-desktop" do
  version "v0.0.34-desktop.20260731.0"
  sha256 "60d812bfcd1e916be98051aa6dc1b5fe5f9abd25aed05bb4dc690a7fe6be49a2"

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
