class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.87"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.87/planton-os-v0.0.87-darwin-arm64"
      sha256 "7607ed3ee65f5d3fef65b11d31be47bd3273f95ecf169adb65110e03bf393f79"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.87/planton-os-v0.0.87-darwin-amd64"
      sha256 "af7185a1073d1646c03d833d8e715e5f7b1f3deb8aadef964f2afa4c06525e0f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.87/planton-os-v0.0.87-linux-arm64"
      sha256 "fed6a55dc90fddcf61a97cfde9f81fec5b65437adeb710c9c48d8c54e9f6186b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.87/planton-os-v0.0.87-linux-amd64"
      sha256 "44659684d8897e8fb7bf5e5524ca375149ab47b8399da4be4281d64a0738c70e"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
