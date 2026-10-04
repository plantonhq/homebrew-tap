class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.136"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.136/planton-os-v0.0.136-darwin-arm64"
      sha256 "482812a713e9414c12b7d88a6ca83eaaf8fa1c25ad218c69b0041fe01a46563f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.136/planton-os-v0.0.136-darwin-amd64"
      sha256 "88f9a6a00aaec3928fad434f678e66219dc07c23a31fbe5e4a8b1d5d41cbefae"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.136/planton-os-v0.0.136-linux-arm64"
      sha256 "f8c7cccc103d064820b07b9ffb00da9834530ed131a2eed46877689cf1ecf054"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.136/planton-os-v0.0.136-linux-amd64"
      sha256 "3944d2d44482db75da4f5899579487529b9c8ca79641200f3b7597ebb1cfe892"
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
