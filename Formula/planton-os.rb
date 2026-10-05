class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.140"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.140/planton-os-v0.0.140-darwin-arm64"
      sha256 "149f0f5d8dec572f01342480deeca9e2492dbfcc3d76da10dde5f341341416a5"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.140/planton-os-v0.0.140-darwin-amd64"
      sha256 "fd7737def2d065f62f46c3930504fb553eec4b05c08965fdc555ae99bc376721"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.140/planton-os-v0.0.140-linux-arm64"
      sha256 "ec5a78014283b4b62cb8f5cca3912071ae05b584da72d7314e9918e64f8f8945"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.140/planton-os-v0.0.140-linux-amd64"
      sha256 "cee3ce6310a42deaf27f6de47147aef132168eef15bcc61e46e6d816144d7ed2"
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
