class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.162"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.162/planton-os-v0.0.162-darwin-arm64"
      sha256 "fa69014122794576b831efe17b4a0b961ad26af49fdd3bd53c5b77e0c6b89f77"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.162/planton-os-v0.0.162-darwin-amd64"
      sha256 "263896e99448a2ef135df08d5b3b3dc7c4283b710b7c4e307a6e19ef028a08d2"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.162/planton-os-v0.0.162-linux-arm64"
      sha256 "a862291f431872f01ccc9b8bbb8c61ae489898e5683cc8f7f57883defc2996e4"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.162/planton-os-v0.0.162-linux-amd64"
      sha256 "b561e8ea1d1fd165d8eaa91bc4088923ecf01d3fa2b8ff7eb853c4767641f4da"
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
