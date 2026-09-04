class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.47"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.47/planton-os-v0.0.47-darwin-arm64"
      sha256 "c86e23eb10b781120b168dbf72584c1de730fedb86ea689bc6d922d122b63f57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.47/planton-os-v0.0.47-darwin-amd64"
      sha256 "0cb8caa3199f30ad3ec6a1aa25d1e9ad5f94cb730ae50e15fe331cabacfbdc6d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.47/planton-os-v0.0.47-linux-arm64"
      sha256 "4b10c0fcbc6a3e8dc3fbbb03eafe349e84a7547c05f8a3fe2acc8d0e1ca1c17e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.47/planton-os-v0.0.47-linux-amd64"
      sha256 "370b477d6d00fad447f22be9ce01c8e03f523637dc6cecc3ef896b1b95c50ead"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
