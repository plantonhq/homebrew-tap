class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.112"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.112/planton-os-v0.0.112-darwin-arm64"
      sha256 "ad66997d62992b955dcfeb893ca8b59197cdbc09bb8eab254ec61d26d137a8ea"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.112/planton-os-v0.0.112-darwin-amd64"
      sha256 "c5847d54121ef2a704c89b6a08e4d713c77163db15b34b1b34d401cbd0c1a176"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.112/planton-os-v0.0.112-linux-arm64"
      sha256 "e94e489f6b35d90534601dcffab865da663cc7699264c803b0038059c1a17952"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.112/planton-os-v0.0.112-linux-amd64"
      sha256 "4d27a8a4a614bc440929dc5a4aa9e4a2170422e04ed3b36c28f4735f27cf436c"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
