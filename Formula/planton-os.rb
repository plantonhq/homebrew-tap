class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.59"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.59/planton-os-v0.0.59-darwin-arm64"
      sha256 "86fab41332d5bd01f305469c4888b0420ff4ba701f539b6b78949c153a9d2e92"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.59/planton-os-v0.0.59-darwin-amd64"
      sha256 "97e69bfe5d4bfb682afd4e0e2c7330754e0b39e5ab5a5a4fd1505f050a2e2916"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.59/planton-os-v0.0.59-linux-arm64"
      sha256 "8653d8641637314b74e3fa47ffc0d58ebec2ca0099b87d4fc70ff9ce00667c52"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.59/planton-os-v0.0.59-linux-amd64"
      sha256 "789407b284903568d37dfd4597a75f278cc02367c352f25d4944f8fec75212e7"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
