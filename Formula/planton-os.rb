class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.60"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.60/planton-os-v0.0.60-darwin-arm64"
      sha256 "596a914f5f62fabc23d7cc87455769f19cef3f5f5fcbfff2c0855e04e87f4ec2"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.60/planton-os-v0.0.60-darwin-amd64"
      sha256 "1df71b46d11b63d4334a8c1d79089467b3900083e462754be4f00201bda09f6d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.60/planton-os-v0.0.60-linux-arm64"
      sha256 "a234ca8d5829483f39575f6ca5024f0f97b9328ba8e489fa07cb80562bbfdd55"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.60/planton-os-v0.0.60-linux-amd64"
      sha256 "8412cef767d98ca3c3366e8b75fb6267a96299d2f2b6ce652ffa4a1adba34b67"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
