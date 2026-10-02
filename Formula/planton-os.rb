class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.123"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.123/planton-os-v0.0.123-darwin-arm64"
      sha256 "da4713eb11c8b5b5c7b031cfa784f28a6d8865f63e1fd2d2a2889a57a120a570"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.123/planton-os-v0.0.123-darwin-amd64"
      sha256 "ba598a358ea181df3b09679bf7cced39ab5dd749ece6b2c3537324411cea7eed"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.123/planton-os-v0.0.123-linux-arm64"
      sha256 "ef6962fdb95549accbc79e7b8605807de4abfba19697e86505a59409863ea24a"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.123/planton-os-v0.0.123-linux-amd64"
      sha256 "9ea658342729d6ba7dfcfc6c9699cc7f605fade75abe0231664ff13cf36484b4"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
