class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.1/togo_1.1.1_darwin_arm64.tar.gz"
      sha256 "3dea477bc95158260f746e3754d1e8a95706650a80e1653608ddb24558b7a67b"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.1/togo_1.1.1_darwin_amd64.tar.gz"
      sha256 "c06ee35f3558e83555ad1d5e20eebb6bcf3fc873206d78064d8713162b2b9e03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.1/togo_1.1.1_linux_arm64.tar.gz"
      sha256 "188ace46756ac794752f97e3bb71bacbabf5787644d156d651b23a9bdbf26642"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.1/togo_1.1.1_linux_amd64.tar.gz"
      sha256 "9f411ac09e5f3281638760cd15d38dc2cef6d6f96e31beb3839a52a74a468c91"
    end
  end

  def install
    bin.install "togo"
  end

  def caveats
    <<~EOS
      Run `togo service install` to start the daemon at login.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/togo version")
  end
end
