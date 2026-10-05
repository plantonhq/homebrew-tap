class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.141"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.141/planton-os-v0.0.141-darwin-arm64"
      sha256 "59e301f31b9c6c64af9f2717319ee21dde87b2129000be1d59556953d40385a6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.141/planton-os-v0.0.141-darwin-amd64"
      sha256 "3aac025471f36cc317e1a69f3b50d882b08d44b9a6cf08cda615462f9e8769c6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.141/planton-os-v0.0.141-linux-arm64"
      sha256 "c9b3027c8f01cfceffd4767014c9f721633db04dd04a0b1d004cf30f327642c6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.141/planton-os-v0.0.141-linux-amd64"
      sha256 "905be344bedfa4771dbee1a6d26eeb0f30e84e9c9e49dd9c422a133a42840eac"
    end
  end

  # The status system's sign-in (planton-os status login) runs through Cloudflare's own CLI.
  depends_on "cloudflared"

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
