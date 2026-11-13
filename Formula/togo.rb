class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.4/togo_1.0.4_darwin_arm64.tar.gz"
      sha256 "8569d48ddf63df0914945207506013e5895b18ed1ed17ab083257502d33aab62"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.4/togo_1.0.4_darwin_amd64.tar.gz"
      sha256 "09c169ea6064b5f0816f8e0c1b63d173fd486ca3000c24dd5797b858da878f62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.4/togo_1.0.4_linux_arm64.tar.gz"
      sha256 "45b893da7b1133ae66caf8bc8a0ce4d5b72a921d95c76f89c36eb5694d7f5daa"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.4/togo_1.0.4_linux_amd64.tar.gz"
      sha256 "31d9cdb52314925ebf2e0c023ddf99487e1caf98bc2525611ae59e3d2ba907d9"
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
