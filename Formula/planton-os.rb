class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.64"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.64/planton-os-v0.0.64-darwin-arm64"
      sha256 "9a81a6dcda45fc020efb0c3e2b3c5dd3f41168f247b43af3484c07228adf2944"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.64/planton-os-v0.0.64-darwin-amd64"
      sha256 "4fd95cb98ea961522206d4762204d988101b80d626246d070b11ea1270e9f0b4"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.64/planton-os-v0.0.64-linux-arm64"
      sha256 "de9aa87b74445e22a47af35974b713f039b2a0f87dca5052aba92498be62779a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.64/planton-os-v0.0.64-linux-amd64"
      sha256 "11a08de37ff2fa7328e9d4c9f783a8eb20e85011e79af9a9ec6ede60ab171df6"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
