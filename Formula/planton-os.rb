class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.134"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.134/planton-os-v0.0.134-darwin-arm64"
      sha256 "3d217212bd891d1d4684673a1501c7b54ff7e718a648d341b1792517fe4bbad1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.134/planton-os-v0.0.134-darwin-amd64"
      sha256 "5597a545868ba53e8acf4ca2d87590bcd72b8d28004ad055a30a2c532f7481ba"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.134/planton-os-v0.0.134-linux-arm64"
      sha256 "aae1455996fc50960020d0fabda9feddb2e7b960eac1f48bf003d42ed7446fa5"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.134/planton-os-v0.0.134-linux-amd64"
      sha256 "c6cec60eca42d948652966e56ef9cee70887914cd70045e9c561a759a94e3e76"
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
