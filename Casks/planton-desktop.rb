cask "planton-desktop" do
  version "v0.0.34-desktop.20260731.0"
  sha256 "8aee55c8d31061d067bb28a93f4d920e59c651dfa4ea4e239472d0b6ec646d63"

  url "https://downloads.planton.app/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — free desktop app for your cloud infrastructure"
  homepage "https://planton.app"

  app "Planton.app"

  caveats <<~CAVEAT
    On first launch, picking the Local instance downloads its runtime
    (control plane + datastores, a few hundred MB) into ~/.planton/cache.
  CAVEAT

  zap trash: [
    "~/Library/Application Support/ai.planton.desktop",
    "~/Library/Caches/ai.planton.desktop",
    "~/Library/Logs/ai.planton.desktop",
  ]
end
