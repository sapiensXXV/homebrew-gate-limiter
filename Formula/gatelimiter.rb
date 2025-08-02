 class GateLimiter < Formula
    desc "Rate Limiting Middleware in Go"
    homepage "https://github.com/sapiensXXV/gate-limiter"
    url "https://github.com/sapiensXXV/gate-limiter/releases/download/0.1.0/gatelimiter.tar.gz"
    sha256 "311403707a004ee376629e19f17f84adb3e6d2710c375c71a946bcc03ed856e8"
    license "MIT"

    depends_on "go" => :build

    def install
    # ./cmd 이하에 빌드 대상이 있다면 경로를 맞추세요.
      system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd"
    end

    test do
    # 최소한 버전 출력 등으로 설치가 됐는지 확인
      assert_match version.to_s, shell_output("#{bin}/gate-limiter --version")
    end
end
