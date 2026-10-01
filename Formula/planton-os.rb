class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.114"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.114/planton-os-v0.0.114-darwin-arm64"
      sha256 "d5f59151d4219354243315b6543a687abfeb910cdac4b9d7ee000f5838bc8444"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.114/planton-os-v0.0.114-darwin-amd64"
      sha256 "18bebc32d073e052e397657cae4b9020d2fb97463f2c0916faaa387e13880aac"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.114/planton-os-v0.0.114-linux-arm64"
      sha256 "7700cdc8d8c9a29a13519febdb9898d70e89827681f1bcad5e2997bd98ea57a8"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.114/planton-os-v0.0.114-linux-amd64"
      sha256 "f70e7dbb75c64277019d427e790ed52eaba90eeb884bff1662ba4c9c6d123cfd"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
