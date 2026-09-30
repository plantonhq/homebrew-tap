class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.106"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.106/planton-os-v0.0.106-darwin-arm64"
      sha256 "a96fc7a805e18b9c9a37d62e249714dedd775e8e7fd580e97c26fcdd073f951a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.106/planton-os-v0.0.106-darwin-amd64"
      sha256 "570a044b0445022bf91cc8e263840c8d74b45e0f8c0220bcef0cc91170422831"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.106/planton-os-v0.0.106-linux-arm64"
      sha256 "9c948b8b233a2cf9c2cd9faf8ba83375fb64bc7fe28136d3ae6712a470cf5b59"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.106/planton-os-v0.0.106-linux-amd64"
      sha256 "d2ecee2fdd9364818a0ac60ddb439ff7868793516d27910fcfcc4204dbb10320"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
