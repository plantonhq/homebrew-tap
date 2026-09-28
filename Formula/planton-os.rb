class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.99"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.99/planton-os-v0.0.99-darwin-arm64"
      sha256 "a3caf5aeba23859ae6e168084de6303a7fb5736897deb451b82eb46af816190a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.99/planton-os-v0.0.99-darwin-amd64"
      sha256 "38ca88fbdf003559f670b0723d57ba6264d0cfc9b33a5833a3931f388bac0dbb"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.99/planton-os-v0.0.99-linux-arm64"
      sha256 "27c71016eebf5289ca52f62123fbf989421c46425a353f0615466a3690d5a0b9"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.99/planton-os-v0.0.99-linux-amd64"
      sha256 "995df1981118fc3bfa8441be6a4d8336383c6ceb52badeae537b1ce8c67caf4c"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
