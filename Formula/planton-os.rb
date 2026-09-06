class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.51"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.51/planton-os-v0.0.51-darwin-arm64"
      sha256 "48ef7ab5f36a0475ea1d3a483811401edd7fb37041b481acd25bf4c514c24168"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.51/planton-os-v0.0.51-darwin-amd64"
      sha256 "48e2c2ed511578bfc27dbeb71de2d2743ad73c1b92c441229335df3397a6a6af"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.51/planton-os-v0.0.51-linux-arm64"
      sha256 "a1fc43c4d415368726390d6fb6737cb8d79553f3bc51307945e1913d66c933b9"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.51/planton-os-v0.0.51-linux-amd64"
      sha256 "075d08fae2a44dc4faf739e80c869dd4c182acea8eaca5a59d6ffe8062e72c5b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
