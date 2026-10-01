class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.117"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.117/planton-os-v0.0.117-darwin-arm64"
      sha256 "2e6f7e98babc8eaba15e2ceab211bf5f1fd3a438f5eaff4b44e9467dd8fd6e17"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.117/planton-os-v0.0.117-darwin-amd64"
      sha256 "48020c21b2092a725371d12a3bcd06c275cee1ac80167ff7122910317815bed6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.117/planton-os-v0.0.117-linux-arm64"
      sha256 "0049867d6ceaf8ed6866a3859f14c8b002f004ca3a12a168ecb4094a573b6629"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.117/planton-os-v0.0.117-linux-amd64"
      sha256 "74be0aa9377b774db5ed79ae3f7a6843942722284743338bea378476705e874a"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
