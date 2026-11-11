class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.1/togo_1.0.1_darwin_arm64.tar.gz"
      sha256 "fd77ab42956a283e1a122ebc8b447e0713ca9c34e7be9d0e1960e8669c9dbb13"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.1/togo_1.0.1_darwin_amd64.tar.gz"
      sha256 "5c53cd07bea417a7adf894078c829dfc6e9bd7295129a55c53d9ae11a2d1617b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.1/togo_1.0.1_linux_arm64.tar.gz"
      sha256 "6e75251ead04c0e42f06f4cbc95efd16d487d5fb18111fd32bb627c9cef8801f"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.1/togo_1.0.1_linux_amd64.tar.gz"
      sha256 "f3b6c4dd61956724de8276437a29f4704e677f98282a2e2bca756307d7f3284b"
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
