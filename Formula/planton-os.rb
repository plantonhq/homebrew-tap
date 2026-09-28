class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.97"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.97/planton-os-v0.0.97-darwin-arm64"
      sha256 "13627f055ea994bf5d723037b65985255454403c6f44feabbf10267e471f59d5"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.97/planton-os-v0.0.97-darwin-amd64"
      sha256 "e859fc0dc8e8cf1797f61287ebec8df9e3841894a939f78bd06fd28f04bc06eb"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.97/planton-os-v0.0.97-linux-arm64"
      sha256 "05a6fc75f302422718a5b3f4e558f600dabd67f520a83560c8c6d1e1a5d0b37b"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.97/planton-os-v0.0.97-linux-amd64"
      sha256 "df75be8c09571d0719d2265d8a72048d055064ec8236c8e66cb68f97af8ae110"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
