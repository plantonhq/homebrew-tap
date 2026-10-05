class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.142"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.142/planton-os-v0.0.142-darwin-arm64"
      sha256 "3b8e3b26791939d25f19fec7e60c7767978510029faecb49520c1f82f2988b4c"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.142/planton-os-v0.0.142-darwin-amd64"
      sha256 "924c7453dff3fac58562de8a4151666e59b495ca091311c4e2e5185692fa53be"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.142/planton-os-v0.0.142-linux-arm64"
      sha256 "952b7f7d52a59376a0c7e8d8126f0acd3e790bb4698dbc7b1ab2b6c2de469b77"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.142/planton-os-v0.0.142-linux-amd64"
      sha256 "e00787afd55feaf0e995785aa31927c7836f8ac58bff10b5b4254f1ad470bc3c"
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
