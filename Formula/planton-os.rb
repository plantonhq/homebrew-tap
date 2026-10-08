class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.151"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.151/planton-os-v0.0.151-darwin-arm64"
      sha256 "1c6a77bb60425aae8a6fad93c35a229960bcb22635579d6e04ab7b1e92ac7199"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.151/planton-os-v0.0.151-darwin-amd64"
      sha256 "b859bc49c81560af977e844f1291a00fc730da25796559603923fef197a6e66b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.151/planton-os-v0.0.151-linux-arm64"
      sha256 "b2afbecf80779b22ce925f899a7e71e552eeb0fe2fb4be38c2e573819f5fcb8d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.151/planton-os-v0.0.151-linux-amd64"
      sha256 "a28588e8938230aefd8035b283447c6585199b0c2a7782dddfb378303ccc68ab"
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
