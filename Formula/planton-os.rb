class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.132"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.132/planton-os-v0.0.132-darwin-arm64"
      sha256 "acfa7c4de76ae7c93c532196658123fa72c2a8a0a6c6d9a62dcc9ffb73da1866"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.132/planton-os-v0.0.132-darwin-amd64"
      sha256 "4ed8046c2b3837c9668ab4b80ebc58e9242358897e8ac7412a6da415f4297c25"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.132/planton-os-v0.0.132-linux-arm64"
      sha256 "591215051310930ce0db25c73c7655b80088a36f7d3d8dd95c1f7462737ec56b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.132/planton-os-v0.0.132-linux-amd64"
      sha256 "5ce2ae1be0fb9e5bd01ba98d61e37a6ba3576276eed2a483d4e6a930848b778f"
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
