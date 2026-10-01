class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.116"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.116/planton-os-v0.0.116-darwin-arm64"
      sha256 "6c675f8c0e17a39b149c4599b431c5505e7f462753ebc0038c037961b477bf09"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.116/planton-os-v0.0.116-darwin-amd64"
      sha256 "39dfd648b040ab7f0d41cd263ab60ecab6a2cd5f44bef8a95c79e3dd86e14f51"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.116/planton-os-v0.0.116-linux-arm64"
      sha256 "35ad8a600a0fc4ca72830b965c952847f1e1867798f5ef750d062b5be9e9e08c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.116/planton-os-v0.0.116-linux-amd64"
      sha256 "955135559e062dd867c57d804dee70b1127e4a0328b3d2e3b8b578274f38ec36"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
