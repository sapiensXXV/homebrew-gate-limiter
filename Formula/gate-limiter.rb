class GateLimiter < Formula
  desc "API rate limiting reverse proxy"
  homepage "https://github.com/sapiensXXV/gate-limiter"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.0/gl-darwin-arm64.tar.gz"
      sha256 "61b10a84197690b73926e55f13d46787eb025d8fc3f792bceb2877990c38ca1a"
    end
    on_intel do
      url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.0/gl-darwin-amd64.tar.gz"
      sha256 "fa94b9d62baf5ef6ba28578b74666236e250cfc3e2d7bbc82f03aa0ca305d612"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sapiensXXV/gate-limiter/releases/download/v0.2.0/gl-linux-amd64.tar.gz"
      sha256 "ceacbe5f0a83a22ac7a890683b5c4ae704beaf5f5c1d8ab8c22102e432908c6b"
    end
  end

  def install
    bin.install "gl"
  end
end
