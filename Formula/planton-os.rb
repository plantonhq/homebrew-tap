class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.31-planton-os-cli.20260610.0"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.0/planton-os-v0.0.31-planton-os-cli.20260610.0-darwin-arm64"
      sha256 "d9b90b6d643abde9926760cb164ce02882b2d053dad4ef82a8d75fe420b10202"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.0/planton-os-v0.0.31-planton-os-cli.20260610.0-darwin-amd64"
      sha256 "84a63f88b0f0caa9717177b8798fbedb867bb235fd29924b408e86919826b839"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.0/planton-os-v0.0.31-planton-os-cli.20260610.0-linux-arm64"
      sha256 "0e2b704655ab646d04867dabd469e330e844567f172548a482e7b162b57dbae4"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.31-planton-os-cli.20260610.0/planton-os-v0.0.31-planton-os-cli.20260610.0-linux-amd64"
      sha256 "9ace583527d43222e2addd7a24963dd5d57b581d37a2973b36c5bc80290acd03"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
