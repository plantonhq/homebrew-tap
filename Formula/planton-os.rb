class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.78"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.78/planton-os-v0.0.78-darwin-arm64"
      sha256 "30273c4ae7e07f2e87242e48b3de1fb507fc99f0d0f925de2673989cffe45759"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.78/planton-os-v0.0.78-darwin-amd64"
      sha256 "18a675690218fe2e305d24310a262eb41243eecdaa831d5e54b3e8fee574e04f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.78/planton-os-v0.0.78-linux-arm64"
      sha256 "9450d665d47bce865e23e1da30252cd3501ac906ac1e97b85458ffe5bb86866c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.78/planton-os-v0.0.78-linux-amd64"
      sha256 "ec47508d028c340293dd4427cf80cf864d421fe400f549076a42f5f83e0e0ba3"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
