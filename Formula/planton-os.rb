class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.125"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.125/planton-os-v0.0.125-darwin-arm64"
      sha256 "93c82ee3e68a6d71a10739db1b4e791315f21e8f7effebb9cc463120ef091678"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.125/planton-os-v0.0.125-darwin-amd64"
      sha256 "81cb579091e05d3e0ef6474f587c4ec252be01b9ba135d8107a6488a3d52d2d1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.125/planton-os-v0.0.125-linux-arm64"
      sha256 "2c39918dce4ad2184a8f277d4df7ff25859667fa5735918709fd3948a1957479"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.125/planton-os-v0.0.125-linux-amd64"
      sha256 "dab30bb8404df6e6e71f5a183ab080f6407078e9ea03f635807b556c200991bd"
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
