class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.96"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.96/planton-os-v0.0.96-darwin-arm64"
      sha256 "368de299a6a0b84137d03392fefa0a1691bc5f4d7553e8709b1b158f0d3f56a0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.96/planton-os-v0.0.96-darwin-amd64"
      sha256 "359e22335bc3b8acc81a6beeb63de179b70316915e661c7ea15b4985c5431ff5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.96/planton-os-v0.0.96-linux-arm64"
      sha256 "8aee0a3c7faddbe8c1c37c896f50bbd9bf7b9122fb22b229572ee304fff30d57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.96/planton-os-v0.0.96-linux-amd64"
      sha256 "69a5ab8b71d16aa25696977c8c4d5f5b0c73617b04961391b67b93349ed39a0f"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
