class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.101"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.101/planton-os-v0.0.101-darwin-arm64"
      sha256 "131e95e6690f9a8239ee2b2f26d8846d28f93eee5a15943ec004861c730ee164"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.101/planton-os-v0.0.101-darwin-amd64"
      sha256 "abddc1bec89a8ceb463b829d72f6835b82b989d6934dc6e6112541193dfdbbc3"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.101/planton-os-v0.0.101-linux-arm64"
      sha256 "086bec1fbff1921e67e56b9906020ad8884f7c2c71cf1f148db2fe876240818d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.101/planton-os-v0.0.101-linux-amd64"
      sha256 "d6786886ffb1d77b5bab9488c2cef3502dd8fed004b319ace31519de6f7d6e0a"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
