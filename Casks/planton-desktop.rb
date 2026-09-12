cask "planton-desktop" do
  version "v0.0.62"
  sha256 "35892ce04cf6e84cd8f1f37c2e615739c3cb3f79e01bc5b1d4b3b574a0f61f30"

  url "https://downloads.planton.app/desktop/#{version}/planton-desktop-#{version}-universal-macos.dmg"
  name "Planton"
  desc "Planton — free desktop app for your cloud infrastructure"
  homepage "https://planton.ai/features/desktop"

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
