class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.33"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.33/planton-os-v0.0.33-darwin-arm64"
      sha256 "6f2ee7f95157030f81e39252da4bbc067a4efb91acf0aee4f41f2800f99860d2"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.33/planton-os-v0.0.33-darwin-amd64"
      sha256 "46e9929d4610995c4cb122eb644ac925c407e73fea807d2bc542f318dfa5f1ad"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.33/planton-os-v0.0.33-linux-arm64"
      sha256 "0bc073e0ad3545ce286382f4cffd4e2e9cfdf6195617d10086bba5643d37590b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.33/planton-os-v0.0.33-linux-amd64"
      sha256 "6d385da8f7392797c577ca8f591f16c28423262eddcdad756f50fb450e152d23"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
