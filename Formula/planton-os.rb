class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.44"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.44/planton-os-v0.0.44-darwin-arm64"
      sha256 "cfb8f2466bfee24cce536e41c858b45e00555d0c2d135c40de1f773d1019f186"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.44/planton-os-v0.0.44-darwin-amd64"
      sha256 "74325f816738767ce2a947422babcb8e81c238ad5de7c88fe422005a4b19b4b5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.44/planton-os-v0.0.44-linux-arm64"
      sha256 "1b1f5311759f3437e6672972199e2634cbd8caceddea7cab17d46f28b4854a27"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.44/planton-os-v0.0.44-linux-amd64"
      sha256 "29cd788a00d16fb05c00714ebbb0f17596e6f6105b37e48296fa9cbd88cb8051"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
