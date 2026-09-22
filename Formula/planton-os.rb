class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.74"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.74/planton-os-v0.0.74-darwin-arm64"
      sha256 "2bd87a1dd284fa052de7a5cec0bce387fcff0aa9f0fc0403456428df913b9ae3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.74/planton-os-v0.0.74-darwin-amd64"
      sha256 "a497d5cbff6ca606966e8653a05b975edd00e08cb028ae4136ae38a6b3438cc2"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.74/planton-os-v0.0.74-linux-arm64"
      sha256 "7df941c2ca47de2bdb3ac66c48378664cf7aeb6c941c2f68e21b1ecdece573a1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.74/planton-os-v0.0.74-linux-amd64"
      sha256 "1b6a9c4684ccc9c10a0b12c8be5c90531ea3b2190246641a86687cb22196210a"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
