class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.31-planton-os-cli.20260610.1"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.1/planton-os-v0.0.31-planton-os-cli.20260610.1-darwin-arm64"
      sha256 "b1c710d458e1846b8947ccb651ada138049596ea4f2c47f6d05dd06649726e57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.1/planton-os-v0.0.31-planton-os-cli.20260610.1-darwin-amd64"
      sha256 "e7c9475295efa2d67fe0a4f946ed5be8b825f1e88cb73c78352f3a8ea36118f8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.1/planton-os-v0.0.31-planton-os-cli.20260610.1-linux-arm64"
      sha256 "e8c98066ddbd9880b3d96c34d6daf57dd5c58328bec54d05c78dbbaeffadf8a6"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.1/planton-os-v0.0.31-planton-os-cli.20260610.1-linux-amd64"
      sha256 "a4d1e80608da0b5c5eb543d4f8c61251e1d3173f02b31692a96f90efefc80386"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
