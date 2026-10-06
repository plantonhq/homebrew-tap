class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.146"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.146/planton-os-v0.0.146-darwin-arm64"
      sha256 "d9830ddc25a16fc307e0918a5d2eae4ac36db938fca4b3163cf42e4ce670fe2a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.146/planton-os-v0.0.146-darwin-amd64"
      sha256 "99b07476460a11b9d9f5123745704022f04f0f3e9ba74e5a65f5fe00b04d872a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.146/planton-os-v0.0.146-linux-arm64"
      sha256 "9f447630d4694ef092329be349fb2c7949e9db26f78be9701cc9efee194cb8eb"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.146/planton-os-v0.0.146-linux-amd64"
      sha256 "fece6cdf8acb32785492982039c7295e54eb60bf5b2404d04500def2da304c08"
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
