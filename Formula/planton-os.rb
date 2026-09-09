class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.58"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.58/planton-os-v0.0.58-darwin-arm64"
      sha256 "0391ec851b8bef2f9229e2f2ec89ff06c9894628cea800584bfac59c35deb9ff"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.58/planton-os-v0.0.58-darwin-amd64"
      sha256 "66a177f951bb5ffd6dbf32d618c5ba9bde5f76bf087f4de2389afc7552fb0323"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.58/planton-os-v0.0.58-linux-arm64"
      sha256 "f09288e8c84178b3b3abd20d80c92b5f3861ca9dbe608cf9a35d3938ef32beb4"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.58/planton-os-v0.0.58-linux-amd64"
      sha256 "0480eb0998a1f229d5e4d24f81e74fcd0db6fa75197e60fa803bf6a56bf4df16"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
