class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.52"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.52/planton-os-v0.0.52-darwin-arm64"
      sha256 "07e444a835ec7d6fee4191262ea9e69ce16c6ef08f60ad70bb64bc4090152928"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.52/planton-os-v0.0.52-darwin-amd64"
      sha256 "faa22613221887cf3e362c53c18ccd9db724e75b6e33becc8a7cd8e1d0fdc5cf"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.52/planton-os-v0.0.52-linux-arm64"
      sha256 "1937a44ddac7b396be85a135872a295d4ade2575bf53c2b61b08824b4e2f5606"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.52/planton-os-v0.0.52-linux-amd64"
      sha256 "a2b2680a2339622b543d07b24d261fcdb5fdb38065e84db794be159a0d7f6d1f"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
