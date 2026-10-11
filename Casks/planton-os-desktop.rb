cask "planton-os-desktop" do
  version "v0.0.157"
  sha256 "a04c3e10c5284d2fb5b0afc0d763feb470378f9be5e0022cecc46d91d385fab2"

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
