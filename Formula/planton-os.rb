class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.148"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.148/planton-os-v0.0.148-darwin-arm64"
      sha256 "1f92633c95d9391e4cfea49cd272524fd3d5a4e982b3c39d50b01ad173f48f92"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.148/planton-os-v0.0.148-darwin-amd64"
      sha256 "d3792b22d38322e10c826bd9f8298a281c8c33254c13c6cccefb6f58b7b9b0bf"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.148/planton-os-v0.0.148-linux-arm64"
      sha256 "a1c967c268865f77befae0ae9391a5198cd00495605867cb25799d9df57d2f8a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.148/planton-os-v0.0.148-linux-amd64"
      sha256 "c11b1568c6233b695d6dc8d22369bf32ca291aa90a9983bea0af9f34b77f1bb6"
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
