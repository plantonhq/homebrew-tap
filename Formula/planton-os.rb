class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.67"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.67/planton-os-v0.0.67-darwin-arm64"
      sha256 "e0018c6cee5ce1744f74687c6ea88457e3582b3345e142edbdf1c07093cd37d0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.67/planton-os-v0.0.67-darwin-amd64"
      sha256 "3b815c68a509884c8d382656d0645e367d2dfc67bca04cfe5e904972cf449684"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.67/planton-os-v0.0.67-linux-arm64"
      sha256 "c9b3bfb66272fd2aeeb16b5223cd9efb8042bedcdde39946b74a80256c7d2709"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.67/planton-os-v0.0.67-linux-amd64"
      sha256 "93ddc5e3a6e3920842c0c97c70002ffcf2c94553bce4d1d04d99392c4472653b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
