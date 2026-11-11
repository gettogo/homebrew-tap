class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.0/togo_1.0.0_darwin_arm64.tar.gz"
      sha256 "462ca6d288069df8e55faae1551634a0d61dfa74b54224bd796c4031f22b4115"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.0/togo_1.0.0_darwin_amd64.tar.gz"
      sha256 "395270ff3d4d175cedfc8fda5f4b2617df95156327018efcb7d8f887697f18c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.0/togo_1.0.0_linux_arm64.tar.gz"
      sha256 "74a9968b3616b6a1e60e187a89360585b5f12db10522e5cca51e21626ed623a3"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.0/togo_1.0.0_linux_amd64.tar.gz"
      sha256 "d1b64c0aafcb4d4479550bd8e3bd250d3ae3366689c3b906a38b1620de00d2c6"
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
