class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.103"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.103/planton-os-v0.0.103-darwin-arm64"
      sha256 "2f87cc586e77aff27bb63d7c18aa4ed10d4969c974560cd9c84ce8dd166ed607"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.103/planton-os-v0.0.103-darwin-amd64"
      sha256 "46077a221f89a658e5ef47c7c22a50c73dde416576c4a5364b21c2170235aa0b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.103/planton-os-v0.0.103-linux-arm64"
      sha256 "5e1c8cdc0b9f497d0c0f2de4c87bcb02a2714c23a6ca37e762ffe0438b0300d6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.103/planton-os-v0.0.103-linux-amd64"
      sha256 "ec55e30684e3424cc3cf45d9b67997f0e1ec94d9000662bad4470cb64d73eb42"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
