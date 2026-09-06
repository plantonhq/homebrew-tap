class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.53"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.53/planton-os-v0.0.53-darwin-arm64"
      sha256 "93f1022fec8bcb99a5a6107d45c9c40a09bb03a5f8764e88cfc3071ce5fc3056"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.53/planton-os-v0.0.53-darwin-amd64"
      sha256 "2354e9a669b6dfb0bdd72983513f3288bd211dfaefd571b3fb5b3d7a94898409"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.53/planton-os-v0.0.53-linux-arm64"
      sha256 "394f5036ce094235ce468b34683089accb7b927c08f873f50d23edaca9771211"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.53/planton-os-v0.0.53-linux-amd64"
      sha256 "dfbc39e86a0e1eb268e0dc323a0e235a075ab18a112956e840b30988a600978a"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
