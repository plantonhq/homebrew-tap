class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.120"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.120/planton-os-v0.0.120-darwin-arm64"
      sha256 "29d32dd81997abedce6ede390be0b3586d886e2feb107767a76536546d966f40"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.120/planton-os-v0.0.120-darwin-amd64"
      sha256 "a61fb71dfa9d130107837bbdf89f693219978720e1f363ce9041bf861a997a28"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.120/planton-os-v0.0.120-linux-arm64"
      sha256 "f2b5299bb8db481a4fbcb2e9d1a91dd9ec57ae4cf8cb4965dc411d8df2cbc365"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.120/planton-os-v0.0.120-linux-amd64"
      sha256 "43fbd2d75cd03c0fa3a7b51eeee13a526daa258b9c94b4c9cdd579873dce8713"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
