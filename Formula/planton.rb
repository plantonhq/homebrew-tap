class Planton < Formula
  version "v0.0.33"
  desc "Planton CLI for deploying and managing your cloud infrastructure"
  homepage "https://planton.app"
  os_arch = `arch`
  arch = (os_arch.include? "arm64")? "arm64" : "amd64"
  url "https://downloads.planton.app/cli/#{version}/planton-#{version}-darwin-#{arch}"
  def install
    os_arch = `arch`
    arch = (os_arch.include? "arm64")? "arm64" : "amd64"
    binary_name="planton-#{version}-darwin-#{arch}"
    bin.install "#{binary_name}"
    mv bin/"#{binary_name}", bin/"planton"
    # Remove macOS quarantine attribute to avoid Gatekeeper warning
    system "xattr", "-dr", "com.apple.quarantine", bin/"planton" if OS.mac?
  end

  def caveats
    <<~EOS
      ✨ Installation Complete!

      Planton works out of the box: with no backend configured, IaC commands
      (apply, plan, destroy, ...) run locally on your machine.

      To connect to planton.ai:

         planton login

      Then set your organization context:

         planton context set --org acmecorp

      Happy deploying! 🚀

      For more help, visit https://planton.ai/docs or run:

         planton --help
    EOS
  end
end
