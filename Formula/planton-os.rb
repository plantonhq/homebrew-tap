class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.56"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.56/planton-os-v0.0.56-darwin-arm64"
      sha256 "245d88f69825f4abb58a6fb938157dc0d8aeb57164f8d0ba62f6abe17ed21135"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.56/planton-os-v0.0.56-darwin-amd64"
      sha256 "af58966123bcb236ab827cf66691550568f7f4e599e3b8161c1682324fa95c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.56/planton-os-v0.0.56-linux-arm64"
      sha256 "f5e769ac1ff32cbecb9c24788fc158d74a91a02a29c18d999019c3a837eb6b53"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.56/planton-os-v0.0.56-linux-amd64"
      sha256 "f67e363b53eb0daea0a5594564940339619df63d061bee7a41692b187f00e162"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
