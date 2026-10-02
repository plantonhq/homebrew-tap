class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.122"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.122/planton-os-v0.0.122-darwin-arm64"
      sha256 "978a5294ef0fd42889313380fbd991827c4251a4f33b6a2d92195fdae7962653"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.122/planton-os-v0.0.122-darwin-amd64"
      sha256 "4fdc3cf6b3c48939f302e527f7df5ae6aa96999b457e4419d3d52fcfe92cf69c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.122/planton-os-v0.0.122-linux-arm64"
      sha256 "fec7eca90e5c327d15b9916755e123121303d46466341b5c4859b3aea76c936c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.122/planton-os-v0.0.122-linux-amd64"
      sha256 "b8c1ade5641422a4c2a6685004e184b113afd648e1a5b253510bdce8c5b8cda3"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
