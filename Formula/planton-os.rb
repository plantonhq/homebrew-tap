class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.157"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.157/planton-os-v0.0.157-darwin-arm64"
      sha256 "4ebbda8f94badf7c0019474faae2d15fe20782d9a3a910f8434336910f7512f9"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.157/planton-os-v0.0.157-darwin-amd64"
      sha256 "286557684c4dbde3fd7ecb3d3dcd68cbbf77af95e3486330b25f345377908454"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.157/planton-os-v0.0.157-linux-arm64"
      sha256 "ca337a94d1659273a5842effab1513b3140cb33e25a46e604e5b0d8f52a2020e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.157/planton-os-v0.0.157-linux-amd64"
      sha256 "b999e776779dc7f7010d1a9b02cd77f957be1042808ab1b965b7ff2fd71797c4"
    end
  end

  # The status system's sign-in (planton-os status login) runs through Cloudflare's own CLI.
  depends_on "cloudflared"

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
