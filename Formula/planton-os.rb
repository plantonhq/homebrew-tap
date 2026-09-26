class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.80"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.80/planton-os-v0.0.80-darwin-arm64"
      sha256 "8ad8cfef21beb81f5e1ed9520e98035359840e8aea3a26926a64e8fd2816bcf1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.80/planton-os-v0.0.80-darwin-amd64"
      sha256 "3403e4924f4d82db9eb3e7a8ffc00a323f65b44615aec343234e1cab9079ec5a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.80/planton-os-v0.0.80-linux-arm64"
      sha256 "475408d7d00a0a90af8aae3650218e77f8205212a476e17580bc3d5d1eec5da0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.80/planton-os-v0.0.80-linux-amd64"
      sha256 "4fac24493f22789cef2cec32b33311253febc0296b877fd79fdfe7df81003c5b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
