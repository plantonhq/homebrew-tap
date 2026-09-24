class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.76"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.76/planton-os-v0.0.76-darwin-arm64"
      sha256 "51be45b859b4578b328d4c0f276fb4634d5ebf1f2e45a1a6ac49930d4aa0ce30"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.76/planton-os-v0.0.76-darwin-amd64"
      sha256 "967ac6bc2e4c73c2d9a6f52677c9fc9178f395b5fd6091cd95076ed38cc8724f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.76/planton-os-v0.0.76-linux-arm64"
      sha256 "cbcf33f154d7733884d463f07f5d0b62d65437c7225925ca054b882c3557dcc8"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.76/planton-os-v0.0.76-linux-amd64"
      sha256 "b282bdbeabc5d793631445bc88bac819acf68927e63683061602f1570750bf53"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
