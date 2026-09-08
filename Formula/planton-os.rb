class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.55"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.55/planton-os-v0.0.55-darwin-arm64"
      sha256 "389e98ffb685b31729b40745424cf9d91df91f669d32b2e69f8bce0c819126d2"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.55/planton-os-v0.0.55-darwin-amd64"
      sha256 "d1d540a740b49f2ddf9eef52794036ecb31dc5f06ad3b57285c3ccc5b6a20df2"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.55/planton-os-v0.0.55-linux-arm64"
      sha256 "7f1851dea90a194d38dfa834a3916469b338938f30943911a23211eae3a9313c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.55/planton-os-v0.0.55-linux-amd64"
      sha256 "7add2b6de05227de34a2729da1ff1083c96b086173c316c9ee8489db38936668"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
