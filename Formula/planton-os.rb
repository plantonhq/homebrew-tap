class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.144"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.144/planton-os-v0.0.144-darwin-arm64"
      sha256 "64cae6d8c532d66636fcf64eaf355385d1a41d1ff3364cb1cb5b9352134a85ed"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.144/planton-os-v0.0.144-darwin-amd64"
      sha256 "b9b22eb179b1e9f384c46a5cb6e3a03d09d6b6360745721ae5bc23fe60cf5110"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.144/planton-os-v0.0.144-linux-arm64"
      sha256 "22e70e0d915f2875820e5d3cafbd08e89958200cb2711869bd3bfdd759bfac7e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.144/planton-os-v0.0.144-linux-amd64"
      sha256 "a6c69d36f25b16dc6be9f78b601c050c46a313234dcffff72574538a7854d736"
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
