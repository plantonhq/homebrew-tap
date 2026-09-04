class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.48"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.48/planton-os-v0.0.48-darwin-arm64"
      sha256 "b3fd62129287680c28e6fbb191512941896e6cf46076cb278f14b80d715d743c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.48/planton-os-v0.0.48-darwin-amd64"
      sha256 "204dd798dd22b5d4eb99e5491d10760a648f24ddea945983542f39469335cede"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.48/planton-os-v0.0.48-linux-arm64"
      sha256 "d81addcf73f93573c6724c07b62b31969110f3e43b30a9282a81fce25a3a0f95"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.48/planton-os-v0.0.48-linux-amd64"
      sha256 "a4d3fd0bb98c85a567e6a6566a0dad9f96c15d29e526d511964e121ae68bb2ab"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
