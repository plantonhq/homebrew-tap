class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.102"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.102/planton-os-v0.0.102-darwin-arm64"
      sha256 "3c332ba98a80e79cee631c68ee32907aae4539a6666904985ec4af2734396358"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.102/planton-os-v0.0.102-darwin-amd64"
      sha256 "7d3e22e23648c60594fd217324df2e50f98927bf25f2c296458fb2fab9f23a72"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.102/planton-os-v0.0.102-linux-arm64"
      sha256 "e93f358698677685fab2b238e984f00bb9f024dea6c364852fc0f4c892b180dd"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.102/planton-os-v0.0.102-linux-amd64"
      sha256 "50838e7a0fc34df2ce77949300396abcebfde815bb50cc83050aa4ad226f826e"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
