class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.82"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.82/planton-os-v0.0.82-darwin-arm64"
      sha256 "dc3efc85065d9cca1543dbccafe5d31e6f8ca0341f129e62324b08bee6f47bbe"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.82/planton-os-v0.0.82-darwin-amd64"
      sha256 "0c37f1bc111e4273b647974aa9bd9142750e33b1aaeba795359eb39388e0277d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.82/planton-os-v0.0.82-linux-arm64"
      sha256 "9eb0f6176ca24390a49a3cb77ac3801aa36e4204be9053e1691d3950d79c50c8"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.82/planton-os-v0.0.82-linux-amd64"
      sha256 "c6d239f2a200448ea4bdfbbd190e23691c07c682ae6f5c9a76f28dea46e1977e"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
