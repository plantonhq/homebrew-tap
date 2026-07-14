cask "planton-desktop" do
  version "v0.0.33"
  sha256 "2c1aa1ca5ea9fd94666e5e7525e8e5dba4db44fd6e4451ed9f97268e4af7884e"

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
