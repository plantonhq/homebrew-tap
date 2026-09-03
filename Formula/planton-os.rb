class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.38"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.38/planton-os-v0.0.38-darwin-arm64"
      sha256 "0ecbf229dae483e16ac4fa6d684f467206acc479572044f5acfa920478dfeba6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.38/planton-os-v0.0.38-darwin-amd64"
      sha256 "d395026f1e51ed3cdcee6db66602fda41d832a0186fc181b23fec91e8a383c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.38/planton-os-v0.0.38-linux-arm64"
      sha256 "e466b0b8108a8171f4b1f391b872e51b0cc2e3c89bc3f88c69fcbdcb4143d9aa"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.38/planton-os-v0.0.38-linux-amd64"
      sha256 "c9f3428a28e01f119e297dc5ce61ca971bf7cf586164eb4e41872f7169e641f6"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
