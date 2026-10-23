class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.164"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.164/planton-os-v0.0.164-darwin-arm64"
      sha256 "e15896e26b07b568d1c57329015e1fe54a71985b27c140b6ffe8b9d749e4be45"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.164/planton-os-v0.0.164-darwin-amd64"
      sha256 "8f7b2b490e90e4481f555f796f4a0da91ea32e4cc5a30ce21abbc14d6e5e1f75"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.164/planton-os-v0.0.164-linux-arm64"
      sha256 "c97bbd87650747eaa8d3fc175b3d93b708297fdc3dc1fef05e9b3c07a20f0e55"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.164/planton-os-v0.0.164-linux-amd64"
      sha256 "529c5de1aafb26616919a14a0be55f445c28d3bf0b4770bb8e75146d59c86949"
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
