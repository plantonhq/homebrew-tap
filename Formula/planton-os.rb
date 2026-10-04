class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.139"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.139/planton-os-v0.0.139-darwin-arm64"
      sha256 "c36a7ca08757a722b44823de8d5e1bc071508e7fbd7ae50028820e54b8bcbd29"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.139/planton-os-v0.0.139-darwin-amd64"
      sha256 "e92aea1f5417813b52f94bb7b63bb233fdcbb371109f6547888017f5b5e50f3b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.139/planton-os-v0.0.139-linux-arm64"
      sha256 "5136405f285d784bf76b587115a761f2308fec7072fa1ee2710a809615b03177"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.139/planton-os-v0.0.139-linux-amd64"
      sha256 "d8ff6090137d636adae632e144096f080c5b600627bcc512a6dc7f3c17a54c80"
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
