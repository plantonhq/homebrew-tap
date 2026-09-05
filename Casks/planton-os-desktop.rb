cask "planton-os-desktop" do
  version "v0.0.49"
  sha256 "2f6b6fdd6512a31e70735505ecd48774cf66848303401eaa879d085b71ba2a0c"

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
