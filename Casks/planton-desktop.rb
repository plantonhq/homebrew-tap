cask "planton-desktop" do
  version "v0.0.41"
  sha256 "7e9905bf5a3bd737552cd2649e2e032eb4176184ff1314e492aa227f47fe98ab"

  url "https://downloads.planton.app/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — free desktop app for your cloud infrastructure"
  homepage "https://planton.app"

  # A complete install includes the terminal half: the planton CLI ships as
  # its own formula (its own release cadence, its own `planton upgrade`), and
  # depending on it here means `brew install planton-desktop` delivers both,
  # with brew owning the CLI's updates. Direct-DMG installs get the same
  # completeness through the app's in-app CLI install offer instead.
  depends_on formula: "planton"

  app "Planton.app"

  caveats <<~CAVEAT
    On first launch, picking the Local instance downloads its runtime
    (control plane + datastores, a few hundred MB) into ~/.planton/cache.
  CAVEAT

  # Bundle id per tauri.conf.json's identifier (a stale ai.planton.desktop id
  # here once pointed zap at directories the app never writes).
  zap trash: [
    "~/Library/Application Support/ai.planton.console.desktop",
    "~/Library/Caches/ai.planton.console.desktop",
    "~/Library/Logs/ai.planton.console.desktop",
  ]
end
