class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.81"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.81/planton-os-v0.0.81-darwin-arm64"
      sha256 "58b44ee0a78e5b4f28d2d135949d35e75f4fe804b23a10487007d26beb75f614"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.81/planton-os-v0.0.81-darwin-amd64"
      sha256 "dd9f2a9100e1fb3afaa5d6f0f94df095b0c581a87ed5a606f27a404200c12e14"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.81/planton-os-v0.0.81-linux-arm64"
      sha256 "3fc3017c7d8c3545300c277b4eaf0cee60fafe9955709347d6db034df2da7884"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.81/planton-os-v0.0.81-linux-amd64"
      sha256 "4db76a29e333a12e41d8b1fabf0fbe0831ce2c871c1320bf22f667d7a22d7f6b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
