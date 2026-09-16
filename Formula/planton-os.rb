class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.68"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.68/planton-os-v0.0.68-darwin-arm64"
      sha256 "16ca862dbc7836e1f9801c8fca5eabc55bf7d74d3cf84aee68e039e30bd2d4c4"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.68/planton-os-v0.0.68-darwin-amd64"
      sha256 "e5f3ed93b3f546b3a19058b1bb3c6a9d191ab6919c92c2e1f73e94c4dc84bf38"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.68/planton-os-v0.0.68-linux-arm64"
      sha256 "2e2ea64021e3d07e114bc1d9a52772910bfee2a762fef38d95e93b1f64fba239"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.68/planton-os-v0.0.68-linux-amd64"
      sha256 "99af4ab80464c6eca5a415d1187e912c1d669facea24f9c996007d9623333029"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
