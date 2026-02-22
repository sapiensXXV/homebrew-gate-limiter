class GateLimiter < Formula
  desc "Configurable API rate-limiting reverse proxy"
  homepage "https://github.com/sapiensXXV/gate-limiter"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.1/gl-darwin-arm64.tar.gz"
      sha256 "fa897d60a97e60fb812d22c3395a41cbbd1b909c66a42abcebec87f6c666b997"
    else
      url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.1/gl-darwin-amd64.tar.gz"
      sha256 "b0e27b8e6143832315f77b34bba302ade3a9c6fe88966bead2daeed09a603982"
    end
  end

  on_linux do
    url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.1/gl-linux-amd64.tar.gz"
    sha256 "9fe6776322c4bf764808c27f398bfd7d7e72edeb0d0f24063c293edba2493e33"
  end

  def install
    bin.install "gl"
  end

  test do
    assert_match "gate-limiter", shell_output("#{bin}/gl version")
  end
end
