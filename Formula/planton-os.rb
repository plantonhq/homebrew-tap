class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.113"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.113/planton-os-v0.0.113-darwin-arm64"
      sha256 "eabb1f6aa9f90a391758b189c68382ad4d82c7e312f3a6e6578c1f5386b8b80e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.113/planton-os-v0.0.113-darwin-amd64"
      sha256 "e3168748df79677ca6893312dc19563c1f2c2f454e8632e18f9269a4c5bd01e8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.113/planton-os-v0.0.113-linux-arm64"
      sha256 "5102831bcf4c444740beab43f21cad0e17d4a70db5e250404d5336edf1671d07"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.113/planton-os-v0.0.113-linux-amd64"
      sha256 "cbe39c65dff7c87577af9b4279ce759b5370bc2b14393e7dbad79d8c744a797e"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
