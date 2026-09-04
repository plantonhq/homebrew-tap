class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.43"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.43/planton-os-v0.0.43-darwin-arm64"
      sha256 "c0d995dc0eeb18ab853bc4a3db71e33c76560d35972f86022ec77690cbc2b92d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.43/planton-os-v0.0.43-darwin-amd64"
      sha256 "1c51307f712c27f494856dad062731e3b352ca476569d1dcb2929243e7acc116"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.43/planton-os-v0.0.43-linux-arm64"
      sha256 "b40ebe54c18258504c96da01491cc6e3eb219421ef6bf2537955ad9240bfb390"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.43/planton-os-v0.0.43-linux-amd64"
      sha256 "af76785c31b38c841a4a2b8b20cbbaa21e86f903c69a73ac0cca906e7751f79f"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
