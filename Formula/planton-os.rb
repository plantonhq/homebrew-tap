class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.34-desktop.20260731.0"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260731.0/planton-os-v0.0.34-desktop.20260731.0-darwin-arm64"
      sha256 "9dcd2069b43620b58e5a00461772367541593f279922875b7fd3de9ceaf7a880"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260731.0/planton-os-v0.0.34-desktop.20260731.0-darwin-amd64"
      sha256 "c83fd9d6313a5d148e7a627701f493699ea9b694545ffcd683545123ea2479d6"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260731.0/planton-os-v0.0.34-desktop.20260731.0-linux-arm64"
      sha256 "e417bf498e0e6e6f564d3ef6735f3978c856927ec7b462473020b8bf2270fa48"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.34-desktop.20260731.0/planton-os-v0.0.34-desktop.20260731.0-linux-amd64"
      sha256 "bf80f2f677d7d9f381d9ba16c2f26b0879024edaa04fb2d05e52042cbf6557fa"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
