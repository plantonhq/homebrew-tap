class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.124"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.124/planton-os-v0.0.124-darwin-arm64"
      sha256 "94a7387b5266e6777a43f813060b04f7364926f52825e53ac7cc1c38b69f7255"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.124/planton-os-v0.0.124-darwin-amd64"
      sha256 "9d32b6354e290d8b2a2e5be3d0e4aa6772ba3c8117cdc020c662c88a87ae3ea0"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.124/planton-os-v0.0.124-linux-arm64"
      sha256 "4acba766067f2089e8953d80b58fc415b0da699397d421f7421f2455c1fe50a1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.124/planton-os-v0.0.124-linux-amd64"
      sha256 "709b65c7892f2b7c3f8cf2bf5aba519d7ccb09effe7b0ee7cf41c48ec50ef9a8"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
