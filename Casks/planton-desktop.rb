cask "planton-desktop" do
  version "v0.0.68"
  sha256 "82961ffef2351bcd1aeddf075fb300f59d700762a2b98154b717f6c64faf4470"

  url "https://downloads.planton.app/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — free desktop app for your cloud infrastructure"
  homepage "https://planton.ai/features/desktop"

  # A complete install includes the terminal half: the planton CLI ships as
  # its own formula (its own release cadence, its own `planton upgrade`), and
  # depending on it here means `brew install --cask planton-desktop` (after\n  # `brew trust --tap plantonhq/tap`; Homebrew 6 loads the tap only once trusted) delivers both,
  # with brew owning the CLI's updates. Direct-DMG installs get the same
  # completeness through the app's in-app CLI install offer instead.
  depends_on formula: "planton"

  app "Planton.app"

  caveats <<~CAVEAT
    On first launch, picking the Local instance downloads its runtime
    (control plane + datastores, a few hundred MB) into ~/.planton/cache.
  CAVEAT

  # Everything macOS keys by the bundle identifier (tauri.conf.json's
  # `identifier`, ai.planton.desktop): app support, caches, the tauri-plugin-log
  # directory, WebKit storage, HTTP storage, saved window state, preferences.
  # The previous identifier (ai.planton.console.desktop) is listed too, so a
  # machine that ran an older build does not keep those directories as orphans
  # forever. ~/.planton is deliberately NOT here: it holds the person's
  # sign-ins, instances, and downloaded runtime, which survive a reinstall.
  zap trash: [
    "~/Library/Application Support/ai.planton.desktop",
    "~/Library/Caches/ai.planton.desktop",
    "~/Library/Logs/ai.planton.desktop",
    "~/Library/WebKit/ai.planton.desktop",
    "~/Library/HTTPStorages/ai.planton.desktop",
    "~/Library/Saved Application State/ai.planton.desktop.savedState",
    "~/Library/Preferences/ai.planton.desktop.plist",
    "~/Library/Application Support/ai.planton.console.desktop",
    "~/Library/Caches/ai.planton.console.desktop",
    "~/Library/Logs/ai.planton.console.desktop",
    "~/Library/WebKit/ai.planton.console.desktop",
    "~/Library/HTTPStorages/ai.planton.console.desktop",
    "~/Library/Saved Application State/ai.planton.console.desktop.savedState",
    "~/Library/Preferences/ai.planton.console.desktop.plist",
  ]
end
