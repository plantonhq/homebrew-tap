class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.111"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.111/planton-os-v0.0.111-darwin-arm64"
      sha256 "2bf8b0f2314232d7e764e648cfb818c2cd732ef27b200ee9e694da009c75d7bb"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.111/planton-os-v0.0.111-darwin-amd64"
      sha256 "0388c032f58acf429d23d23ae71ec5596450c57032aee57d0286e944771b6bbb"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.111/planton-os-v0.0.111-linux-arm64"
      sha256 "a80550a92d80ef6dad19047e852300a52949f10cc99ff31c017a3c89fcb46c57"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.111/planton-os-v0.0.111-linux-amd64"
      sha256 "8f60f1d08b2eb4a5b15b08af349684360c419c7ac2b6a2b506b9e1718a7a647b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
