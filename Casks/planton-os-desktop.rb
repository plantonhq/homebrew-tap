cask "planton-os-desktop" do
  version "v0.0.58"
  sha256 "58f6b61e0542f5b771d4d596d0b8f41ad0975b41b2abb0cf3b55094cba4194e0"

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
