class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.129"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.129/planton-os-v0.0.129-darwin-arm64"
      sha256 "b27539b489aec89730adeadbdfee97efd8ba0d477de95eee5b3ecb0a9e694946"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.129/planton-os-v0.0.129-darwin-amd64"
      sha256 "fad41be07ee73de1277458296491e0c4eecbf0ba6a16de4601b4b5c21b399bab"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.129/planton-os-v0.0.129-linux-arm64"
      sha256 "33fe8d89d74a0be93a9000a0922cb597fbcdc77b703b587082cf1f7ee176726a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.129/planton-os-v0.0.129-linux-amd64"
      sha256 "9ec95796f1d93395468ee48e5fa748315c462e6961ccf4cf70b5dfb0b0d9012b"
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
