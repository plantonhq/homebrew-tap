class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.75"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.75/planton-os-v0.0.75-darwin-arm64"
      sha256 "095778a95e6af78c1fbb05dc6b47331abcc0136cfa3ae2101d81056849fe62d1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.75/planton-os-v0.0.75-darwin-amd64"
      sha256 "5951faf61fab9228c0c20f45256df80453da6ba2dda50560b8df139e6fd4f110"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.75/planton-os-v0.0.75-linux-arm64"
      sha256 "ed53d2390df11973f7bbaa2c5fd5ac6b42206ad008ef9a01410f6d28416de4c7"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.75/planton-os-v0.0.75-linux-amd64"
      sha256 "7a3f290b7fa7dea03b9de3369fcb575ab4b109bbb58655e14c9c59c94a6026db"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
