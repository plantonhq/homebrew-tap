class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.133"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.133/planton-os-v0.0.133-darwin-arm64"
      sha256 "996cbeea5748b47a483d721e4b3b85eb96f118dbfd76f9d69be2bc96a604928e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.133/planton-os-v0.0.133-darwin-amd64"
      sha256 "a7dd76e22f492a803bf95c89283e0994880a10f42c95b63716a373c53cf8a747"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.133/planton-os-v0.0.133-linux-arm64"
      sha256 "daf4ff8bf23758f51ca1081cbf85b30afd9434f4ffe9a7c7ac354f11cb6dbac3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.133/planton-os-v0.0.133-linux-amd64"
      sha256 "0317a73e192def007bfa4f766b9019335f31620541412583ca9d7c262a03ea40"
    end
  end

  # The status system's sign-in (planton-os status login) runs through Cloudflare's own CLI.
  depends_on "cloudflared"

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
