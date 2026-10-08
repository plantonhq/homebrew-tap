class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.150"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.150/planton-os-v0.0.150-darwin-arm64"
      sha256 "47ab5f768aba286950cc3f8cd163c02f0c37a0fa152650ff75ab2f390d28814e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.150/planton-os-v0.0.150-darwin-amd64"
      sha256 "bfe11809649d13a5be8f52c07ad7761c00608e8baa6f65561856ff44526cd49e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.150/planton-os-v0.0.150-linux-arm64"
      sha256 "78b571853fd637286ed70ab4fcc7f256fc27b8bd090a160275116146f823065c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.150/planton-os-v0.0.150-linux-amd64"
      sha256 "b59e31670be907872032b520a15d3fa4eb3c11627127b054568cf15b65850c59"
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
