class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.77"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.77/planton-os-v0.0.77-darwin-arm64"
      sha256 "a6ecac6f841aa837a71fae172e33e8c2b4c4de83317ac9af3b0c4829eb718fcb"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.77/planton-os-v0.0.77-darwin-amd64"
      sha256 "136db6817f6bddad88d809d4cac6d0fba9a766e95357711c661b64cd1c047f24"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.77/planton-os-v0.0.77-linux-arm64"
      sha256 "c25f9e788f96518da323ae51524f0fb618bde1c8b4cef0bbcf6b551deeacbbf3"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.77/planton-os-v0.0.77-linux-amd64"
      sha256 "b4d9e3cce732d91538a12e1a065b0208a65c624115b024fd7858706666fe2254"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
