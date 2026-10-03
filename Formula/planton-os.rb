class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.127"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.127/planton-os-v0.0.127-darwin-arm64"
      sha256 "88b77fc45edf4fa58af3a196029852693e3c457de712c72e6484cd5a672b2b76"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.127/planton-os-v0.0.127-darwin-amd64"
      sha256 "a4c74dbf621c3a4340dbab41dd8fe55fa57e3fa957480f3e9a76d4666f4b2afd"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.127/planton-os-v0.0.127-linux-arm64"
      sha256 "f13a85f31311d9325e8ecfc7b7765bb2c701de2cff712aba920b6255a5d71a22"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.127/planton-os-v0.0.127-linux-amd64"
      sha256 "da0a65171ede34c6386020fc965bfb764a8dc46b106f67e04010859b549cc8c5"
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
