class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.121"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.121/planton-os-v0.0.121-darwin-arm64"
      sha256 "0b2e7603b4439e3cbcfbee902da044d8c4786258c1c02db90a63fdde6fbec39d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.121/planton-os-v0.0.121-darwin-amd64"
      sha256 "52142dacebcb3f4720c2fd17c36b75fd640b51de2a04febb3b7dddcc64ea770e"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.121/planton-os-v0.0.121-linux-arm64"
      sha256 "b09015663c7f9664ddd3a31e448291666eacd5b4088614aa113ad466d27628c7"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.121/planton-os-v0.0.121-linux-amd64"
      sha256 "48fdaca8ad404bd96521fe21914053bd54693fe6a108390f8149bdd3f0fa6dcd"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
