class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.79"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.79/planton-os-v0.0.79-darwin-arm64"
      sha256 "fdccc1a4956565569f22ef05819037fa929d976eb33cd5d4c0e86103c1464c22"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.79/planton-os-v0.0.79-darwin-amd64"
      sha256 "c28ff6a40b32d1c44666889290eec24a051188fdae6e42a45f17a6c7c66ca857"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.79/planton-os-v0.0.79-linux-arm64"
      sha256 "5c3d5ad0241e382a032954e65aa193b1695bb74334d405bd9b44c1b23b49177b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.79/planton-os-v0.0.79-linux-amd64"
      sha256 "dfa153c0e324a16d2fa650b75e4f7a0b28b2bbe67596e9424d8bfd54fff11290"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
