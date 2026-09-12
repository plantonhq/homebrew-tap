class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.61"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.61/planton-os-v0.0.61-darwin-arm64"
      sha256 "3b6bfb4fe17fb1948bb5b0e76ddb85d4b54387b6248259d48f93a4814a233c39"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.61/planton-os-v0.0.61-darwin-amd64"
      sha256 "ecf3f4e68cc9d09089f6351760a2d8eb58f0297373e9584ae7edddf50cbd9e72"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.61/planton-os-v0.0.61-linux-arm64"
      sha256 "78db53904db0ba3753c01c8c0cd5f9c8d0a5b49a1049c741b8a6888ea7f9b956"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.61/planton-os-v0.0.61-linux-amd64"
      sha256 "0be4d1ed7d17f5c0035e2190fa70a4be50ba4007d5c8bd13b757ba17a3520069"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
