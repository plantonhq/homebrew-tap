class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.70"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.70/planton-os-v0.0.70-darwin-arm64"
      sha256 "6c3b5d51771c1c3c2516bcc6bb9e6ae1a9727dfc0905a6db357f932505a46c77"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.70/planton-os-v0.0.70-darwin-amd64"
      sha256 "56e6bde48dcc007c56effc395e6561b89c753a4bc338898267744c51d63168d0"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.70/planton-os-v0.0.70-linux-arm64"
      sha256 "fe19f9515ec1949dea2ad91fa61085fa63e6f1d9f4294d60725490e31a4d2798"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.70/planton-os-v0.0.70-linux-amd64"
      sha256 "0f253c6263f860883fa75232c80ab67825456d704d7b2419757c4d9a295828df"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
