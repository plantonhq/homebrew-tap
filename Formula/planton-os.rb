class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.94"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.94/planton-os-v0.0.94-darwin-arm64"
      sha256 "a18c1370200ad2505c54f7bdbb4ba63689ae9f9b5ea7e5e9bedc6d8cfdfc05d1"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.94/planton-os-v0.0.94-darwin-amd64"
      sha256 "23d9e4cf24584aacabf695456f88e5be5f39d92a1511884b3f015ed0de9930ed"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.94/planton-os-v0.0.94-linux-arm64"
      sha256 "a35d41c3e289fe13ea6e12622325ce1c29599be0742f77e6036cc2b341c6431d"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.94/planton-os-v0.0.94-linux-amd64"
      sha256 "9114b14475dd2eb8da7a3ac33e35dc39429b292b8465ab35991210766b25e3c2"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
