class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.155"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.155/planton-os-v0.0.155-darwin-arm64"
      sha256 "c554da15f1f4760e4d6c6b9a8e3a91dccd0d9fdff7637aae4d1a4f3b0f2e7c57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.155/planton-os-v0.0.155-darwin-amd64"
      sha256 "03eab776b46b73d32adb235e5f61fbfa1a83f868d2371fdfc5e7e421e0dd3c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.155/planton-os-v0.0.155-linux-arm64"
      sha256 "df686491f46a51000c53d108885b903ed6f17721b6fefc2110560d418314a45e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.155/planton-os-v0.0.155-linux-amd64"
      sha256 "d231858004925abb118d8ef0e0c85817fc77c8b8d2d7884a22959922ca10a721"
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
