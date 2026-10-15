class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.161"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.161/planton-os-v0.0.161-darwin-arm64"
      sha256 "7d1ef4d76d2236033f67106ee93c7ee321c1cab0dded0cc0270c6991c0bacf92"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.161/planton-os-v0.0.161-darwin-amd64"
      sha256 "0f3eea38fe709abeae0c80d11ee819274a7f3e11a3c38b13613fdca137ae56f0"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.161/planton-os-v0.0.161-linux-arm64"
      sha256 "e7060ea61c5118771353ff65f8247801b874399e4d2e3049755d37daca234c43"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.161/planton-os-v0.0.161-linux-amd64"
      sha256 "15043df684898641c6c3555283bddc988f170dc1d5efb9ff9a1493aeabecde2b"
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
