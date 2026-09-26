class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.85"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.85/planton-os-v0.0.85-darwin-arm64"
      sha256 "386e9574fab52d1001279caf069d8cb2ef23005d224b6349f1a221d8005054d3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.85/planton-os-v0.0.85-darwin-amd64"
      sha256 "c2b9db49c1c9ae40e2aa566e9ef37af506fa4f69d1b4cf4a48e772acbb6bbf97"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.85/planton-os-v0.0.85-linux-arm64"
      sha256 "d8cb0424fc43a2a5982b8a74217099d19a662bcd4d7f633e2eb9390f55bd36c0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.85/planton-os-v0.0.85-linux-amd64"
      sha256 "c69d297c2c8abd608430d6ebda9a75575b85ed5268cae34bdb4cf7f1303dd4b4"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
