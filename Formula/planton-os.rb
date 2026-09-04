class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.46"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.46/planton-os-v0.0.46-darwin-arm64"
      sha256 "267a1bbd0021ab2595a4941572ae623020e5427f8a36721183310aca39de112c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.46/planton-os-v0.0.46-darwin-amd64"
      sha256 "09863a7883475ebc293d41dfaf3a49b7cbec4af6d22aa613ddca51afb3228b78"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.46/planton-os-v0.0.46-linux-arm64"
      sha256 "69d63003a191113abaf93fe8b14f774fa77af8c02631fad03cfc845e92aec800"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.46/planton-os-v0.0.46-linux-amd64"
      sha256 "236e723a828d990aff9d482e14edde5daa0aa1fa6d947b6f94082c196e0b33bd"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
