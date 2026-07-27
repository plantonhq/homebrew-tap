class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.34-desktop.20260727.2"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260727.2/planton-os-v0.0.34-desktop.20260727.2-darwin-arm64"
      sha256 "b2724bb4cd4db3b44aea425641709d0938705ead414cbba3ebced607af2c7f2f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260727.2/planton-os-v0.0.34-desktop.20260727.2-darwin-amd64"
      sha256 "a272803890c5808ec85cc6761e737eb888582731f46fc0fd5a7e79dc47478c9d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260727.2/planton-os-v0.0.34-desktop.20260727.2-linux-arm64"
      sha256 "880d151502969c8339c48403f4904d65d33e61547196e40ed712c0c5ad1a7be6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260727.2/planton-os-v0.0.34-desktop.20260727.2-linux-amd64"
      sha256 "b87678c981e170f33ff66603bc3788015f85d11c92466b5af73238b39c7fdc94"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
