class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.110"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.110/planton-os-v0.0.110-darwin-arm64"
      sha256 "fdaffd74d420f1f8717a8d3414e0de42afba3c40998ca0b36af2666ce155f928"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.110/planton-os-v0.0.110-darwin-amd64"
      sha256 "9c63fce5664d00fb29c611fdc3e200f0df598747ff12e1c456eec716744fac28"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.110/planton-os-v0.0.110-linux-arm64"
      sha256 "85f73630dbcffbb935a2dd52d75475e87981ebcb3f945001d8550e15398a2b27"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.110/planton-os-v0.0.110-linux-amd64"
      sha256 "3f12609aeeb3282c56059b3ff05a36eee3680b66592191ea612ddd4f3cf876d1"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
