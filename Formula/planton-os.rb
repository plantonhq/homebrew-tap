class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.100"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.100/planton-os-v0.0.100-darwin-arm64"
      sha256 "7e4c02f568eb2f80974c3adfc214d6033aa54861c51777d0c643a1d5c4727cce"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.100/planton-os-v0.0.100-darwin-amd64"
      sha256 "1dd1ae3677b46c1dcf0cee30301412a9bc2d20d2f551885aca4b982c8df42b29"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.100/planton-os-v0.0.100-linux-arm64"
      sha256 "fac4dc36bb5b31c360bfefe6a34256d2411531d966ebb3708704880318ff0871"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.100/planton-os-v0.0.100-linux-amd64"
      sha256 "4c041252b068ad5f2f23d51ae36934d6394b88e4ca35cda8bcb3467f82be8598"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
