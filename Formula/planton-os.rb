class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.95"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.95/planton-os-v0.0.95-darwin-arm64"
      sha256 "a1d2a9a4aceb19d76d8852f56efbe9e7a891e5d64ca5bcf5df7dda90d5b632b2"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.95/planton-os-v0.0.95-darwin-amd64"
      sha256 "d06b122586ed41b2515a47d93209fe898c4571bacad7984adf0f5997fe7e1578"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.95/planton-os-v0.0.95-linux-arm64"
      sha256 "6e6a418d561c5494a2debc62dc101568277c3139f72f8da41ae522d8f3b04b16"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.95/planton-os-v0.0.95-linux-amd64"
      sha256 "a20a57ecde9cb7db095d24254883c2104befc9e7bb5666656cd7d21618c49bde"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
