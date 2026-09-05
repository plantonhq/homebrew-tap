class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.49"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.49/planton-os-v0.0.49-darwin-arm64"
      sha256 "cd668b5feedf12bf3987e9f738b0893694949df11ae1dcee0329d23396a120af"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.49/planton-os-v0.0.49-darwin-amd64"
      sha256 "8dc62e0f8f018a07a1d44703d3c21cef33e2be05797f596b2cb6a0144f359647"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.49/planton-os-v0.0.49-linux-arm64"
      sha256 "57c76c8523fba54572ac5a4126c0cbb51d7e852af651f159cd7adc8f64b36e82"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.49/planton-os-v0.0.49-linux-amd64"
      sha256 "fdd14f4129644adeeee50f3e2f5cfb01d508abbbf9079de60a509e60ec14a86b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
