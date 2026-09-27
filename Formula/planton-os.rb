class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.91"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.91/planton-os-v0.0.91-darwin-arm64"
      sha256 "025ae4cca0cd9dc4654fe7b4f59c09489e20c4428bf70ceaaf388361bb32f20d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.91/planton-os-v0.0.91-darwin-amd64"
      sha256 "5fe044eed25a496ed883aa2d4ea7dfb6efe0cb1c984cd4cfa73e8490bcfd6ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.91/planton-os-v0.0.91-linux-arm64"
      sha256 "5c636a03e4a26c008a712e181f97cf64ca30bfcaa5aa17e9168c619cac3bcb6a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.91/planton-os-v0.0.91-linux-amd64"
      sha256 "816a572036cadc0f1920cb0f4e95b22b1842e3e27aa3bd485105a68f4f3fc126"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
