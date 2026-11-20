class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.2/togo_1.1.2_darwin_arm64.tar.gz"
      sha256 "233df06fefcdc674400fc42335830ad8cac67b251fe53972bcdd52cac4ea7cf5"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.2/togo_1.1.2_darwin_amd64.tar.gz"
      sha256 "564c3f5b448ee698864d1c9ab0510423aba15f2dde2bee1d30d7114f511ed526"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.2/togo_1.1.2_linux_arm64.tar.gz"
      sha256 "30994ecc68a5ec07141598b82a94b8174135e1dc3c83bf5546813974c0580897"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.2/togo_1.1.2_linux_amd64.tar.gz"
      sha256 "79f80cdd7d13d73e6500cd024e16bdc07fe3eb94f3db5aeeb28906ad5bd5819f"
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
