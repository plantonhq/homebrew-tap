class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.42"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.42/planton-os-v0.0.42-darwin-arm64"
      sha256 "a68621ef26937b603243b5752672eaa79f8d15eae0e7ee918a4568bd6b24f358"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.42/planton-os-v0.0.42-darwin-amd64"
      sha256 "824a23c501c9b80c1b3063018b2ffd24922925ca35b35bbc5a602de7e06e89ee"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.42/planton-os-v0.0.42-linux-arm64"
      sha256 "7c23d34aef6ac84e09b7a9cac2d2dda9d174c1066f96c47ef6221096cc05a32f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.42/planton-os-v0.0.42-linux-amd64"
      sha256 "973c73bc72c234b6487c1391fbc553d515ac2c4072f1b67f163c255c3f132fff"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
