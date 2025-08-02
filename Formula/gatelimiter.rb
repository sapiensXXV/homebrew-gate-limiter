  # Documentation: https://docs.brew.sh/Formula-Cookbook
  #                https://rubydoc.brew.sh/Formula
  # PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
  class Rsdic < Formula
    desc "A eng-kor dictionary for the terminal users"
    homepage "https://github.com/sapiensXXV/gate-limiter"
    url "https://github.com/sapiensXXV/gate-limiter/releases/download/0.1.0/gatelimiter.tar.gz"
    sha256 "311403707a004ee376629e19f17f84adb3e6d2710c375c71a946bcc03ed856e8"
    version "0.1.0"

    def install
      bin.install "gatelimiter"
    end
  end
