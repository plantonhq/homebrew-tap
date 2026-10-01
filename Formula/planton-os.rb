class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.118"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.118/planton-os-v0.0.118-darwin-arm64"
      sha256 "745ed8372b4fe7d975035fb7543557faac82865bac38b2acda6a11b75f89a3ff"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.118/planton-os-v0.0.118-darwin-amd64"
      sha256 "badba2e2336564baf67b762cb57a207684891f4baba528889e7daabf4bd4af1f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.118/planton-os-v0.0.118-linux-arm64"
      sha256 "fbcef70d0770a02c4e8d9214463d035397cc5ec3755b8ea7a94d40724ba5fdf9"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.118/planton-os-v0.0.118-linux-amd64"
      sha256 "f9f53e1d2a535755f7fc2aa2808eeb8d5a220254f7334fc345d4718544d54184"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
