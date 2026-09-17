class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.71"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.71/planton-os-v0.0.71-darwin-arm64"
      sha256 "5352430aea46cec9cfc22212ed36e8173ff91699dd3f5d5419a79dad6eb523b3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.71/planton-os-v0.0.71-darwin-amd64"
      sha256 "2dee30fee71ccf34110148a173f0877fa64f2f044da4261fba53b4a424f826b9"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.71/planton-os-v0.0.71-linux-arm64"
      sha256 "d6998d9b1420ef31894b36f7df3c0a970710301e750759ce6d4cbfc61316d25e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.71/planton-os-v0.0.71-linux-amd64"
      sha256 "9c0428e7571e2ee6c49b84d78c975a92325e5ade52551e63e08d3100aca25233"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
