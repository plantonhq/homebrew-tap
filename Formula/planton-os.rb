class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.154"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.154/planton-os-v0.0.154-darwin-arm64"
      sha256 "a28549314b27dafb6c1998ab13c95ead6e9700b1be7ac05d7ec15c1f7cdbe432"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.154/planton-os-v0.0.154-darwin-amd64"
      sha256 "2f082c123af6641363124b49f58e1d4b78f839ef88ff4d37363094ad42ea1695"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.154/planton-os-v0.0.154-linux-arm64"
      sha256 "7565acf2ebe35fd77e70ca9c00060e16b9ba965f5633533b7a43c74530bea427"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.154/planton-os-v0.0.154-linux-amd64"
      sha256 "9dbb1c04e5c1cadf24d1c3dd36f449ea8817752cad91a77267baf360f61aec93"
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
