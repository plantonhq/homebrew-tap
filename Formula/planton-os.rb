class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.88"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.88/planton-os-v0.0.88-darwin-arm64"
      sha256 "813f5342a6ff06033a6c232b306d2cac9e3cdb69b72c1718dd87e5c0cb09f949"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.88/planton-os-v0.0.88-darwin-amd64"
      sha256 "a6ac4dca03eddb1ad36607567758189e01893f5107c624adaa25002a8ae13c4a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.88/planton-os-v0.0.88-linux-arm64"
      sha256 "312473d6bab889dbe0f5804873c26d7cf3f6e2095429ee4c7d31f6da9c280344"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.88/planton-os-v0.0.88-linux-amd64"
      sha256 "a57a180e4f5e9e18822d3c09da84cef6f8c92f71838aed8480f5264b35de0498"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
