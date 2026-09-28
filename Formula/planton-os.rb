class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.98"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.98/planton-os-v0.0.98-darwin-arm64"
      sha256 "9ddb3f7179714bc1a732418187bb1e45aa006c833ce34d224345e371394196e4"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.98/planton-os-v0.0.98-darwin-amd64"
      sha256 "bd68087bb023596d936cb8cea54f48792caaeb9f58081c972423632a3518d64b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.98/planton-os-v0.0.98-linux-arm64"
      sha256 "41557f362305feccbe183f9f3041ad7e98a620ceaf35ce55d33952fa6dbd1ddc"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.98/planton-os-v0.0.98-linux-amd64"
      sha256 "a312146f211f17d60fc5fe105c583a493e7ff0c069ab5c4491dfc1b9a7c0a14b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
