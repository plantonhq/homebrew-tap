class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.93"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.93/planton-os-v0.0.93-darwin-arm64"
      sha256 "23c96ef285756900b0ff7752f338e74f5a276f3a733c4c390698e27eb837aefe"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.93/planton-os-v0.0.93-darwin-amd64"
      sha256 "b78db9aa5ad8e46675da082b36c1b3c7f2c3d5f31f539ab110be34a934f65845"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.93/planton-os-v0.0.93-linux-arm64"
      sha256 "5410bcb5611547f0f2ebc3152676038a5103fae709df151a9c1054ea29f22b48"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.93/planton-os-v0.0.93-linux-amd64"
      sha256 "bf955d940cfde836d116ee25a614e96d3edf64f9e7960b4359552fd5c2702a8c"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
