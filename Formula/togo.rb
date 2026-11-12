class Togo < Formula
  desc "Run coding agents on your Mac and watch over them from your iPhone"
  homepage "https://github.com/gettogo/togo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.3/togo_1.0.3_darwin_arm64.tar.gz"
      sha256 "761d3a7cae8f90f463c8dfc8f9e4ccef060841516d35fe6c3ecfa82cc0917769"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.3/togo_1.0.3_darwin_amd64.tar.gz"
      sha256 "a3ecc284cdd07135adad2cb385e179241a9ceae862211396e1dcf1149b65e0f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gettogo/togo/releases/download/v1.0.3/togo_1.0.3_linux_arm64.tar.gz"
      sha256 "bcbbd5115ce9c1935590c45a9fb83820c1682d1c6626eca832e0bdbf5ecfd843"
    end
    on_intel do
      url "https://github.com/gettogo/togo/releases/download/v1.0.3/togo_1.0.3_linux_amd64.tar.gz"
      sha256 "e365b7787483397f64e62bf32cb7670e5bbcee3c999acbfda3152e042cd9b291"
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
