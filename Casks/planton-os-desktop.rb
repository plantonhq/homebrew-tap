cask "planton-os-desktop" do
  version "v0.0.68"
  sha256 "34e75460a0e968283aa68ff3e3196826d74d9361c3bccfb267c911a1722d4c79"

  url "https://downloads.planton.ai/client-apps/planton-os/desktop/#{version}/planton-os-desktop-#{version}-universal-macos.dmg"
  name "Planton OS"
  desc "Planton OS — native app for the Planton company OS"
  homepage "https://planton.ai"

  app "Planton OS.app"

  # Everything macOS keys by the bundle identifier (tauri.conf.json's
  # identifier, ai.planton.os.desktop), plus the previous identifier
  # (ai.planton.companyos.desktop) so older installs' directories are
  # not orphaned forever. ~/.planton-os is deliberately not listed.
  zap trash: [
    "~/Library/Application Support/ai.planton.os.desktop",
    "~/Library/Caches/ai.planton.os.desktop",
    "~/Library/Logs/ai.planton.os.desktop",
    "~/Library/WebKit/ai.planton.os.desktop",
    "~/Library/HTTPStorages/ai.planton.os.desktop",
    "~/Library/Saved Application State/ai.planton.os.desktop.savedState",
    "~/Library/Preferences/ai.planton.os.desktop.plist",
    "~/Library/Application Support/ai.planton.companyos.desktop",
    "~/Library/Caches/ai.planton.companyos.desktop",
    "~/Library/Logs/ai.planton.companyos.desktop",
    "~/Library/WebKit/ai.planton.companyos.desktop",
    "~/Library/HTTPStorages/ai.planton.companyos.desktop",
    "~/Library/Saved Application State/ai.planton.companyos.desktop.savedState",
    "~/Library/Preferences/ai.planton.companyos.desktop.plist",
  ]
end
