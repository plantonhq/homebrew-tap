class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.62"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.62/planton-os-v0.0.62-darwin-arm64"
      sha256 "2bcae9c4da97525269f029f0a5eee661df49429c3b02b00320edeb59242cb5f0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.62/planton-os-v0.0.62-darwin-amd64"
      sha256 "cc58ea4de35d10fd618d06ef2ce49e89869b50d19c2211d1d2dc87cc1ad5c389"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.62/planton-os-v0.0.62-linux-arm64"
      sha256 "af004c05531c2c6b3780ff238f53ab2d542bbedf52ff4a6709a06dc2c4a629c3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.62/planton-os-v0.0.62-linux-amd64"
      sha256 "39bbc714646372556213f82274b05f2dc6a960d701fd6eec6d2d95145e4f3981"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
