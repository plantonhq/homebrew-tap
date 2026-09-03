class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.41"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.41/planton-os-v0.0.41-darwin-arm64"
      sha256 "fcc3df1284679a02f3aacf5919284a01b84a3552938753e0d5e3bfe2676f83e1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.41/planton-os-v0.0.41-darwin-amd64"
      sha256 "86fa01e8f32df4e5c16357104caa5181809c2a67192c794c9169e4304295f0e1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.41/planton-os-v0.0.41-linux-arm64"
      sha256 "f52dc1c8872475824ee459401afcc12c6ade4f9180edfded395b313fb3f51ac7"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.41/planton-os-v0.0.41-linux-amd64"
      sha256 "664aaad42a3c791874d7f3525c7328be1daf9ddb76e64cc4284826c526547904"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
