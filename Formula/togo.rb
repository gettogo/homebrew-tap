class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.2/togo_1.0.2_darwin_arm64.tar.gz"
      sha256 "f2c56050b828fd47fc827840d2ad643bdb9b91ecc398a0e892159d3cf7e09ba7"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.2/togo_1.0.2_darwin_amd64.tar.gz"
      sha256 "c6d14f0245d5a2a3defcee976c3784f9b19d97f71330fd657ce338c9a8dd8c53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.2/togo_1.0.2_linux_arm64.tar.gz"
      sha256 "7d6985bbb8382b4fae3ce55c5d814cbdc616fdced1a7695891b11c3ff29125e1"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.2/togo_1.0.2_linux_amd64.tar.gz"
      sha256 "d5a6cea4232491261707d5e30b26830e6075a8965f9948919adb87c149f06360"
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
