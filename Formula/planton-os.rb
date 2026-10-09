class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.156"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.156/planton-os-v0.0.156-darwin-arm64"
      sha256 "d07dfa3082178f140557dab23910ae280bbb9adf8695d1adffb09e76f734c546"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.156/planton-os-v0.0.156-darwin-amd64"
      sha256 "576f28619cedb6753cc16e87eb5cfbdf95149782da2c716ccecdd55a1388d54a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.156/planton-os-v0.0.156-linux-arm64"
      sha256 "d37e1b854721a1b1cdf12ca04d4024748d45907fecfebc9f30fec4f3066a0a4d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.156/planton-os-v0.0.156-linux-amd64"
      sha256 "ce32ac7d125a6aeeff2b962e5db44ca6d72acbfba43208ce4ec9636fa518c119"
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
