class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.69"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.69/planton-os-v0.0.69-darwin-arm64"
      sha256 "184d3f7b7d1c15467dd75e12db6df89eb35244fab6159b4b29ffbf2c21691a33"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.69/planton-os-v0.0.69-darwin-amd64"
      sha256 "88357ff113bdc3869a31f6c80ab7c954e0866784224b4a89944b233b914d02c4"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.69/planton-os-v0.0.69-linux-arm64"
      sha256 "be04de2a78bac0b7012777e137d6f5525988d1cd3a5eaa2e931a89d4fde85f51"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.69/planton-os-v0.0.69-linux-amd64"
      sha256 "db159acec3c1bfcb757c4ff4d35d3bca98f75ddb8d7efc0d802ee73041212256"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
