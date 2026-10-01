class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.107"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.107/planton-os-v0.0.107-darwin-arm64"
      sha256 "3045ae318941fefbdde403607d17e63b3136abdcd0b765608202d1a66546d73b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.107/planton-os-v0.0.107-darwin-amd64"
      sha256 "830e5fa0a0e1294771510a5832ee2658dc826511cdd098cf9a7ae2ea428a1398"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.107/planton-os-v0.0.107-linux-arm64"
      sha256 "39440a19debe56b1c5fa29a6a62b97b9f9f56041f8dbeb6521ca3b07c89b7609"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.107/planton-os-v0.0.107-linux-amd64"
      sha256 "46ec8a539bced0dffde85c68ba29990827e31d50a5bf06947bf7bab6f1412686"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
