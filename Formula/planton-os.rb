class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.54"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.54/planton-os-v0.0.54-darwin-arm64"
      sha256 "d51c5f8f086e3fb06886485675d50976ae25849c65741b07b7d7a0e4ed71c85c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.54/planton-os-v0.0.54-darwin-amd64"
      sha256 "6460ffb2d3eb59f0fd3335847ec362bafae30d448b7e33e8337758475fec09fc"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.54/planton-os-v0.0.54-linux-arm64"
      sha256 "2e9fe2e56aad8fff1a2e5d75fbb97b9cd5b5e55d952914dff2d2c34e978d4c70"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.54/planton-os-v0.0.54-linux-amd64"
      sha256 "ccd632d4027125d217f88d7ce2eaf10b3c6ba6a84a3a319a8862a0b7ef6a5399"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
