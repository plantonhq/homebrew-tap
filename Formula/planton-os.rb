class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.163"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.163/planton-os-v0.0.163-darwin-arm64"
      sha256 "9df9aff9807b7f9550b7bf8a229ce9c53c10463f5e095097e329515c0a96e89d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.163/planton-os-v0.0.163-darwin-amd64"
      sha256 "d4112cf67be6f3c2e94ce8a670b027bbf3cb5263277d74af1974a30c622f8345"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.163/planton-os-v0.0.163-linux-arm64"
      sha256 "ecabe6a68fb5e696267849ffc03c5b028bd6639b9ccd188df4f9c8afe3986f31"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.163/planton-os-v0.0.163-linux-amd64"
      sha256 "dcc2a963f98ca7f2348f201bc5e00b198e3ec0359adaabd933e9f029a778cf53"
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
