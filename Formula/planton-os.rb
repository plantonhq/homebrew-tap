class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.66"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.66/planton-os-v0.0.66-darwin-arm64"
      sha256 "364dd8dddd8272f9ca1ba7bbc518399878c80bc68b74a72dbd0a6c270046f15f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.66/planton-os-v0.0.66-darwin-amd64"
      sha256 "d2b71577f80bff29289535a11b910177ab5e527b26b7f807096e15a9f96d1cf9"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.66/planton-os-v0.0.66-linux-arm64"
      sha256 "6860a2d6a231386afa3acfaa58e5718533e09a1c06fe1f5b972756635d0df831"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.66/planton-os-v0.0.66-linux-amd64"
      sha256 "75f549d57a4f9ccca59b14e41047f1bd82c253bf11f1ce01d97342c51198f1b8"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
