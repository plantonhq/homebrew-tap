class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.128"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.128/planton-os-v0.0.128-darwin-arm64"
      sha256 "090cb5dcb43e81daf88434b4cfba28660b7168557d1b0a0ed9102b53a93cb81c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.128/planton-os-v0.0.128-darwin-amd64"
      sha256 "1ded4d811f9fc70e46b5b93efe714eb1e1f443c0d85b4b076582e55302832054"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.128/planton-os-v0.0.128-linux-arm64"
      sha256 "24d458f8e27eeec7aecd1c20e992605338c91aa5724051687383008f7a62c0a6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.128/planton-os-v0.0.128-linux-amd64"
      sha256 "4ef914673316b4b0b83cc19c23fedd48cbc7f7d7c3699c7bd5e28d752b4ec6e8"
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
