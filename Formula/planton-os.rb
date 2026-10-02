class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.126"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.126/planton-os-v0.0.126-darwin-arm64"
      sha256 "d8e44b1d878ffa66b76323c73690321f7bcddacd4c67f8f6d884e127f278e697"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.126/planton-os-v0.0.126-darwin-amd64"
      sha256 "31c99b71091d57306e03bf91f4620e804d74e1c2c8680120540eb29045e5936f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.126/planton-os-v0.0.126-linux-arm64"
      sha256 "d443aa66591b9654d55a95f84708e12c22482cdf93d82a57be8a2bb02be91147"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.126/planton-os-v0.0.126-linux-amd64"
      sha256 "67682a63910085559b63f1f87239e9ff1ed9ba2a249e32423e1c37c2621f240a"
    end
  end

  # The status system's sign-in (planton-os status login) runs through Cloudflare's own CLI.
  depends_on "cloudflared"

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
