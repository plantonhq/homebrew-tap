class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.31-planton-os-cli.20260612.0"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260612.0/planton-os-v0.0.31-planton-os-cli.20260612.0-darwin-arm64"
      sha256 "81297c98584e854ee3776b811284f3ccaa9d97cf5802d11a5cb95934064a5400"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260612.0/planton-os-v0.0.31-planton-os-cli.20260612.0-darwin-amd64"
      sha256 "a92ac9d1dfe8dfbac1bef213dab5394a6ac3c923408d045d0923bd41009ec6a8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260612.0/planton-os-v0.0.31-planton-os-cli.20260612.0-linux-arm64"
      sha256 "eb0fa4e9d2992cb6a7dace7c35aa4656e31acbc03f1f7adb991a0693abe9961c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260612.0/planton-os-v0.0.31-planton-os-cli.20260612.0-linux-amd64"
      sha256 "16d3b1bc1996cf5ad9f52fa4b063c5b878b48edc24146a1f7391f49f5bdec393"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
