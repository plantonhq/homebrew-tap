class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.143"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.143/planton-os-v0.0.143-darwin-arm64"
      sha256 "7db65d4d9f8c496c00e98b07d988338d455e4837b8b3c85b3f0a1fd111aa06c0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.143/planton-os-v0.0.143-darwin-amd64"
      sha256 "faa11678670a4e4c85a996c745dce971859f2ab315b01bc067260533a7bed486"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.143/planton-os-v0.0.143-linux-arm64"
      sha256 "292e3dad634274853118b0f804335fe0b36eb859178db24521145e31cccdfc20"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.143/planton-os-v0.0.143-linux-amd64"
      sha256 "291e2423df226a709d7c454affaa6938ffd5fcc701afca314cfbd7b69cc95f3a"
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
