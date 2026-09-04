class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.45"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.45/planton-os-v0.0.45-darwin-arm64"
      sha256 "a4878fc57135c1ce48df573ba76797da383af1f94870888781a77e131ca538bf"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.45/planton-os-v0.0.45-darwin-amd64"
      sha256 "f7dd493936391d086dc3b4b03c12d30f76ccdd343de4eb53bbea0c454d8e6d54"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.45/planton-os-v0.0.45-linux-arm64"
      sha256 "17430c3ca96dbe2593bdc979de94bd6b9879941a6f6fd43861618279f70e8d52"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.45/planton-os-v0.0.45-linux-amd64"
      sha256 "6451a5945a9782bd811970a76d702ed1c83dfe37c3ca9d4df2c3f775ab9a4f9d"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
