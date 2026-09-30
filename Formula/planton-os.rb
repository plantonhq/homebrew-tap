class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.104"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.104/planton-os-v0.0.104-darwin-arm64"
      sha256 "4011d2fcf520042b78ed2d1e33f85085f8e738e66a00eac6da00e8a81eef6485"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.104/planton-os-v0.0.104-darwin-amd64"
      sha256 "8f61e5c063c56e34f287b8dee4dc9b306ad9dfce8ba3de3b995ff6a75b50edea"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.104/planton-os-v0.0.104-linux-arm64"
      sha256 "4e32936c3d0c44975138e828b9acdc2da0516a7774cc6b07ec8f86ac92f57df9"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.104/planton-os-v0.0.104-linux-amd64"
      sha256 "c36f86d545ac2d2f66454f6bef74d4d90a4b4266c11994070ec2b3e8d8b03a9d"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
