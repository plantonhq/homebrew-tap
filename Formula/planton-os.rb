class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.109"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.109/planton-os-v0.0.109-darwin-arm64"
      sha256 "5ccaa61b4ef676459f539db5c8929c75a93e70d7f4e131d82f898184bee9223c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.109/planton-os-v0.0.109-darwin-amd64"
      sha256 "affc7aa01308bf610944794b25f8e2ba0b2b4b77fd18dc398ecde9b353e66299"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.109/planton-os-v0.0.109-linux-arm64"
      sha256 "2013375f2391beaac3cf6e3f9a58b4a3764886a3c63092058631e41f04533577"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.109/planton-os-v0.0.109-linux-amd64"
      sha256 "4dd8a85650692b6d3f0fef50b74fc5956bd9cb4eabfef60c4eb70b0c72179571"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
