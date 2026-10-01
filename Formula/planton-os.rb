class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.119"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.119/planton-os-v0.0.119-darwin-arm64"
      sha256 "f3ea76d15a8bca734f7a59b952aad3562fe28d70b07673b2fc9be69a90a397fb"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.119/planton-os-v0.0.119-darwin-amd64"
      sha256 "066f8e7cfc09bf2139ee5929e012b82ffb88e9fef5dc5b5ecc67bbe326abdade"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.119/planton-os-v0.0.119-linux-arm64"
      sha256 "0f589c12fdc3ebf61756b084b872c7f5fb2267f459dcbbebdf06162ac41facef"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.119/planton-os-v0.0.119-linux-amd64"
      sha256 "fed007163abac4676bd3dc5a9dadeda71b4f57da4fc0e964cd1cbe940743bce4"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
