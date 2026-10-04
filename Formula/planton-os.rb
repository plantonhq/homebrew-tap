class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.137"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.137/planton-os-v0.0.137-darwin-arm64"
      sha256 "536de15782c1438f6424a62ffd936c6fa7f9d3de3e756a801d27aa0a5314ffeb"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.137/planton-os-v0.0.137-darwin-amd64"
      sha256 "fdc3295da936ab60713bcdcb80f742bda78451974401c61f69a6d89ca9187c0c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.137/planton-os-v0.0.137-linux-arm64"
      sha256 "95ee94b0ebf88020724db45e55829fb5d94497cbaf7f9465fa69c4151e4d7b17"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.137/planton-os-v0.0.137-linux-amd64"
      sha256 "1f59df42a5eedb2a6243d77d0a6c7c0da0129ca88fb854dad3cf5001851af534"
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
