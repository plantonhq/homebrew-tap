class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.84"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.84/planton-os-v0.0.84-darwin-arm64"
      sha256 "35d2732ef7333294033b6485fd2fe4cb823cc28923a1afcba52ad50908a40450"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.84/planton-os-v0.0.84-darwin-amd64"
      sha256 "fed6a1f8c6ce3b60a1a673f90941f7b0d2cd07f41c611dce049b8b9f04db9938"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.84/planton-os-v0.0.84-linux-arm64"
      sha256 "3e69009ce59cf1d3910d009cfd1859effce2b84a7e4f71c2a24af4a8cebc356b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.84/planton-os-v0.0.84-linux-amd64"
      sha256 "661723f9ec663bf21ff33ade34379d4d7b34d5c5582b37d943fe10611f4ac427"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
