class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.4.1/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "72e6f5a2e24d730c9089e0f5136070d08717729267f3a592551fdeadb09f167d"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.4.1/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "c3ade9c0a502bdc3f2fafdb61c0b5ffab98abc8c2e39ef46ed9e2df8cf16cd7c"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.4.1/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fb6db09932a07d66300e7ec14c6bcc4f0c494d0dc0b4fc39189aeae39491b24"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
