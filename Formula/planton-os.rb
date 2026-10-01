class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.115"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.115/planton-os-v0.0.115-darwin-arm64"
      sha256 "64ab2e6b05dbe0d032027f08abe6d567b8974489dccebc72b9ede324c6d8cd3f"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.115/planton-os-v0.0.115-darwin-amd64"
      sha256 "8de0257e9a2f07b5960ff6649f2fe9b12906d015a4b41aeb514b8426713b9797"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.115/planton-os-v0.0.115-linux-arm64"
      sha256 "eae5771c3470eeac03d618e1e6196ed3eb53a5a72dd20d7c7a1e5ef627462c09"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.115/planton-os-v0.0.115-linux-amd64"
      sha256 "5a95ad5be0b0038583b187f090baaaa7795a3e0dfea5d937211ae04e4c4cabe3"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
