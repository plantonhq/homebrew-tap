class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.89"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.89/planton-os-v0.0.89-darwin-arm64"
      sha256 "4bd0b427976c9d4bc43a1c37c42f5cc18897ed48722d3f38f816ad6f8d8a7816"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.89/planton-os-v0.0.89-darwin-amd64"
      sha256 "25870021052630a04ad0ffada3a164070e696e2a54d43403ac0990886da4476e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.89/planton-os-v0.0.89-linux-arm64"
      sha256 "c374ef31a6d74dce8380152b04c56602595c075c06e3a9048056535c370a0f70"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.89/planton-os-v0.0.89-linux-amd64"
      sha256 "bae2a319067d7a7ab205ab7560bb19b1314dddc9fd63de35b92a0324e689a512"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
