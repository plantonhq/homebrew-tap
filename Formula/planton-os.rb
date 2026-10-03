class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.130"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.130/planton-os-v0.0.130-darwin-arm64"
      sha256 "7cd16d373c9ce18e11e42e497be38135d52aaef5282fe4ae759671a07640c2da"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.130/planton-os-v0.0.130-darwin-amd64"
      sha256 "d392a7df50e7a3910ad28d85b03bb8f7ad8312284cffac4e69e676eafc33a6a4"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.130/planton-os-v0.0.130-linux-arm64"
      sha256 "52142905accbcdd396afd3f60356bfdc145fb54bb8c545165b35655594d1fcac"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.130/planton-os-v0.0.130-linux-amd64"
      sha256 "339d3f1ff32f332e4efc1d5f1e7f6aedd584e9b346229a6a1b1216d4a6cd1839"
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
