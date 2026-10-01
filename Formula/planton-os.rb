class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.108"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.108/planton-os-v0.0.108-darwin-arm64"
      sha256 "d7f391c1035343828a5f8bb5b0440b5226c5cd51170c6a0ceded4188434f6464"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.108/planton-os-v0.0.108-darwin-amd64"
      sha256 "c025dcb0bb26ec0da0f0da9ca3e2bc6098441a19b661be2ea3201e25bdf62e6a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.108/planton-os-v0.0.108-linux-arm64"
      sha256 "b6f1f47120ed2fc0ccafd100594ef7d0f948f76f375529710c060aac8fc8321f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.108/planton-os-v0.0.108-linux-amd64"
      sha256 "1f18c2507b533a1fd4ba1b36488b57701164cbdfaaa9e1784b2fdc5f05d23f56"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
