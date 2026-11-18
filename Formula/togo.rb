class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.0/togo_1.1.0_darwin_arm64.tar.gz"
      sha256 "339320bfd01e7846b9314d0420561501ac06395cd15178c1fc73a25692835305"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.0/togo_1.1.0_darwin_amd64.tar.gz"
      sha256 "fd21b1bf3a772452d9d414a345378ef45b7ad995c3b2a473b7fc09ab20380d5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.1.0/togo_1.1.0_linux_arm64.tar.gz"
      sha256 "bbe6b4a82dbd17b94a946d5d1f9e52cd2b8315b590fe9d4789daa1c3ff34f16b"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.1.0/togo_1.1.0_linux_amd64.tar.gz"
      sha256 "0755171074b451a80c5d5e5863c040a095f722831ceb5febcb51216d351b05a8"
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
