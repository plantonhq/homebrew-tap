class PlantonOs < Formula
  desc "Planton OS CLI"
  homepage "https://planton.ai"
  version "v0.0.50"

  on_macos do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.50/planton-os-v0.0.50-darwin-arm64"
      sha256 "d9197015a1039657660513beabc20fb1981d48a9b62d38c354751637a7593519"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.50/planton-os-v0.0.50-darwin-amd64"
      sha256 "b26a749aaa8c7502c293bf6f1297fb33cb98b4baaf0a802e066e2b7986b6ac4f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.50/planton-os-v0.0.50-linux-arm64"
      sha256 "dc5a30e4dfcccedf79df15cd8cdf61407b46f2b58e5c1dc1e2b42ac7c5c6d230"
    end
    on_intel do
      url "https://downloads.planton.ai/client-apps/planton-os/cli/v0.0.50/planton-os-v0.0.50-linux-amd64"
      sha256 "f520e363c65de95335c5f0bc26ddb3fa23f80c5a90b1a1abab627c147d26ef73"
    end
  end

  def install
    bin.install Dir["planton-os-*"].first => "planton-os"
  end

  test do
    system "#{bin}/planton-os", "version"
  end
end
