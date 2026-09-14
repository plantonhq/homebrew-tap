class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.63"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.63/planton-os-v0.0.63-darwin-arm64"
      sha256 "2d7c7fce1f2d171b717c69fb2ce7f0736fd7ce4337eaaf22789bac6d241b9bd7"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.63/planton-os-v0.0.63-darwin-amd64"
      sha256 "54f7503c5d8fb36280f8cfd6a9d1595ab8a840d745774089024d6fbefb3130a7"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.63/planton-os-v0.0.63-linux-arm64"
      sha256 "62a2062a8013ebc24aa71ec2f6f6a524c6a3fa82e2c3c752284b435b6ac772a0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.63/planton-os-v0.0.63-linux-amd64"
      sha256 "c7fd8d0bd909f0f3465298e16d81da3439695ee7e93146fd5c39c7f8164f1e4a"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
