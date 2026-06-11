class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.31-planton-os-cli.20260611.0"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260611.0/planton-os-v0.0.31-planton-os-cli.20260611.0-darwin-arm64"
      sha256 "11084bb2344d2f6022dc8ece5ecd1533ce027cc7aa422df137c532b7b4d1c40b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260611.0/planton-os-v0.0.31-planton-os-cli.20260611.0-darwin-amd64"
      sha256 "03ea5807ef38fae1ee3063a9095d3741c65ec31dfc6d08780c53ec5833c46f48"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260611.0/planton-os-v0.0.31-planton-os-cli.20260611.0-linux-arm64"
      sha256 "9dc689a89017a91a5d91ea3782c1e9c91b301d6ba364464cae3abf3e7a3d5112"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260611.0/planton-os-v0.0.31-planton-os-cli.20260611.0-linux-amd64"
      sha256 "2fb3805586fb57857cc98dc3e52eef369a2844dc1537d66addc11a80e8e63396"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
