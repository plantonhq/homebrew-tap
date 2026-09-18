class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.73"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.73/planton-os-v0.0.73-darwin-arm64"
      sha256 "7ee6a28b273c13d15c353aac4364cff6ea5646cafcd6f44861e08ac84c9f93a0"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.73/planton-os-v0.0.73-darwin-amd64"
      sha256 "527c26fc61be4c7fe7fda9baab5d2c8adc56295ae7ac5edc46e93621c84b39a0"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.73/planton-os-v0.0.73-linux-arm64"
      sha256 "c7bf08b99cacf81d83ff1b5794e5858e44d8f421876cc3230f5aeb5710cfcdd2"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.73/planton-os-v0.0.73-linux-amd64"
      sha256 "09cfc1808b8d36988c0a6b99b2ddab7467a20197e96105a836605c46bd58edbe"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
