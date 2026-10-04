class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.135"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.135/planton-os-v0.0.135-darwin-arm64"
      sha256 "9f1d7ff0fcbf89287651857224197cf8cccb195477dcf92a041433a258252599"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.135/planton-os-v0.0.135-darwin-amd64"
      sha256 "64f304c3585f9ac6fba613e8a42b7eefb6b8fad4aba854c5c57be4e4f83638b6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.135/planton-os-v0.0.135-linux-arm64"
      sha256 "39e6ce8f4aeb41616c5b24f010f0068c11d3fd73926cb671f0c4482554cc4725"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.135/planton-os-v0.0.135-linux-amd64"
      sha256 "d91e32bd1e58a127d53d0a2cfc31173698821c57d5103975ccae373275e91ff0"
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
