class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.152"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.152/planton-os-v0.0.152-darwin-arm64"
      sha256 "8485f774983ba185a89aa2602d49585c26ec1a6723dfbed6a47d6e384b84a3aa"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.152/planton-os-v0.0.152-darwin-amd64"
      sha256 "aaa5ed3801359845363f9a3409d498c1322d1233aa24c129c477bcc5daa16c91"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.152/planton-os-v0.0.152-linux-arm64"
      sha256 "72ae8cd17f3beae86a2bfc46dd854a160ea0506f05c95d95aaa94c84c85667ad"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.152/planton-os-v0.0.152-linux-amd64"
      sha256 "7d153f25493ed7a064ccb9e109d78cd0848e9f041f73c5d90161ca9f1090088c"
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
