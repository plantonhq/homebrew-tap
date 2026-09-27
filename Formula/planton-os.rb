class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.86"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.86/planton-os-v0.0.86-darwin-arm64"
      sha256 "34f82c54c83407f71137e066bc685c6a5763fc84eae3fa19406605ed78cfbc2e"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.86/planton-os-v0.0.86-darwin-amd64"
      sha256 "b9824bcdda94560abd0db347c0a7399248f3a90fdb305bafd46d36a6a567f9b8"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.86/planton-os-v0.0.86-linux-arm64"
      sha256 "bfd029043052640c699b453206f5e8e8290fa652ea9d513c80b59e59ac0751ba"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.86/planton-os-v0.0.86-linux-amd64"
      sha256 "1048311b399c5a44eb6d0138de2b10a69c980d3a370abc0c0a05481f9597c02b"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
