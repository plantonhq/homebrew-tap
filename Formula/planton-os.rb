class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.30"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.30/planton-os-v0.0.30-darwin-arm64"
      sha256 "cb5a598ef5bd6e5171e906a021fd08e2779f359a444779d267b489a4d5e4d99c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.30/planton-os-v0.0.30-darwin-amd64"
      sha256 "7d307daf6e6df6ccc46993bd470931c950897d4ccf546c4d644b810b2fdf4bef"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.30/planton-os-v0.0.30-linux-arm64"
      sha256 "d27125b0956570a53367b6c3e38446a3dc0c2f893c553769ca35af35a71af0af"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.30/planton-os-v0.0.30-linux-amd64"
      sha256 "f474d5ea7070f6063d607cee7b2e0c843e8bcb26ad7b6dbea1f2bf1ed14ab4e0"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
