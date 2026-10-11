class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.158"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.158/planton-os-v0.0.158-darwin-arm64"
      sha256 "4ba09ba0b631647429d0a14fef1fab93c543ee84131dd63e33a0c7ab5196ab64"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.158/planton-os-v0.0.158-darwin-amd64"
      sha256 "664bc5099a9342d3ab6e242551ed7782401243840d7e26c71d567254e6ad60c5"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.158/planton-os-v0.0.158-linux-arm64"
      sha256 "dfde8fbd248db338c6b5d332292a3648a4e94ecf093af2d71e6b3d40a6128325"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.158/planton-os-v0.0.158-linux-amd64"
      sha256 "7eaceb651dfd10598caaaab1002574ceee36776581f4fcef6badb2bfa8ea0d69"
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
