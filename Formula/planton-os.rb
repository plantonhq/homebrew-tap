class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.145"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.145/planton-os-v0.0.145-darwin-arm64"
      sha256 "c33bbcd8e349588adaa34fc7b7782ae73c377c8efcaacdd2b81ef82894f2a98a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.145/planton-os-v0.0.145-darwin-amd64"
      sha256 "2a20ba9a1b43b3236424062fa396e127b047e69f5b39848fe8d09ef30672331b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.145/planton-os-v0.0.145-linux-arm64"
      sha256 "6fdfd77d8e2432ff6c9b041704119f2d772fa90c36084a10ae9692d9ba4c903b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.145/planton-os-v0.0.145-linux-amd64"
      sha256 "613cff633988ff05ec9300f175a8e69e9203cf96f10ddba46104089630845c04"
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
