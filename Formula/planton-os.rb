class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.65"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.65/planton-os-v0.0.65-darwin-arm64"
      sha256 "026fe88214e5f7a39e6ecffce3931a8d25e58fbdf972a73f4768c04d857f7013"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.65/planton-os-v0.0.65-darwin-amd64"
      sha256 "a26c353dabed3f5665be987158c7c281ebdd0b22213648f2d87e6627a321057d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.65/planton-os-v0.0.65-linux-arm64"
      sha256 "c321edb5f831c705f8b619027c9c1b0d464b160eb42dd911f487f5c97a3db88b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.65/planton-os-v0.0.65-linux-amd64"
      sha256 "9fd7589bdd48e25229ef43f3273a8de70074718da4084f5988ae9bfbda175d35"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
