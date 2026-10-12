class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.159"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.159/planton-os-v0.0.159-darwin-arm64"
      sha256 "d516adef46094163511daff4eb49508f8733a34ee357e9d72c45a7423bd77d57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.159/planton-os-v0.0.159-darwin-amd64"
      sha256 "808465b2dd44ee94f3c70cca5020ab35c23b46ac39c707c979ba43327ea96004"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.159/planton-os-v0.0.159-linux-arm64"
      sha256 "3449023b57ccb5d2bd2e7d63b4c1280bac1d02e42aea5948b6b09eeccd632479"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.159/planton-os-v0.0.159-linux-amd64"
      sha256 "7c90b789731f269d971a4266ea766a57f84489f737198651f7b24d1b02ceae10"
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
