class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.160"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.160/planton-os-v0.0.160-darwin-arm64"
      sha256 "dd77ce66b1f5a1153b321d94d1eac9da7650a14879d065bf067e13fa2e04b604"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.160/planton-os-v0.0.160-darwin-amd64"
      sha256 "82014d802de2a9b0b82c88d13328a7d6002ec4633fb2138f03b20d740d2bf371"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.160/planton-os-v0.0.160-linux-arm64"
      sha256 "3ccabf5b2b2ab978795972967543ef8680f5ba74843c7d7761c524c73ee4920d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.160/planton-os-v0.0.160-linux-amd64"
      sha256 "19b701e38376c8543b8033de91afa2b5851cd07dc57ad5aa3ea39cb17b9d92b7"
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
