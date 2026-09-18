class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.72"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.72/planton-os-v0.0.72-darwin-arm64"
      sha256 "000b1aa1462218cab7e50a17a0dd5c5910e073a9d235a22ae2ddd2ccd6fd9f74"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.72/planton-os-v0.0.72-darwin-amd64"
      sha256 "c5832f8ca1c680bfe188c82e75ac22ec310c7123047d461962f20781f173f8b5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.72/planton-os-v0.0.72-linux-arm64"
      sha256 "17110659884e395cb54fe65fba2e15729077946f02c488e08328fe899cbb900b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.72/planton-os-v0.0.72-linux-amd64"
      sha256 "c65a55613aa72a02ff838121c5d0c5dc3632eba3d8eb9ef5b1e52c632f8879c1"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
