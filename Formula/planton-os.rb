class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.31"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31/planton-os-v0.0.31-darwin-arm64"
      sha256 "e266522177b24d49b6722b3a8030eca0f04532d81415716f2d595171389f3a0c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31/planton-os-v0.0.31-darwin-amd64"
      sha256 "9b618381033d9e0ce4967b9ba6bdca8e71cceff6da307526224770e36f3f0909"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31/planton-os-v0.0.31-linux-arm64"
      sha256 "3a06f3fff88dd005c1a50acebbab119eb008709f986cb0dd5cb0b2ffad61fb41"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31/planton-os-v0.0.31-linux-amd64"
      sha256 "8a1cecf5b106c0a2c11b534d4ab2fc9543593699ea6e6218b055271231cab083"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
