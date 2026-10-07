class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.149"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.149/planton-os-v0.0.149-darwin-arm64"
      sha256 "5857817a4d3e3b37d7e0311448e935a489671f9d2f851efd982f1d14b236fc4c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.149/planton-os-v0.0.149-darwin-amd64"
      sha256 "0fb5fec2c1f948b30c1fa14044b3cb65ab264b69288f97012c6f3dd85c552725"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.149/planton-os-v0.0.149-linux-arm64"
      sha256 "fc21918e849fb6d9199a3e910c072ddd0a85882c8afcccd08162b215b8eab6d5"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.149/planton-os-v0.0.149-linux-amd64"
      sha256 "a67f4d9b63610d4988cdc2c88d1bfece0d0812ff395d7b98f0377961f7f7d566"
    end
  end

  # The status system's sign-in (planton-os status login) runs through Cloudflare's own CLI.
  depends_on "cloudflared"

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
