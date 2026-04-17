class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.1.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "fc8040ad03f460efedfad11ba422654ad7e619f8f0e14368e657c6e07dccc017"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.1.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "a42166b39bba7baa89cb2132f66971f015d02d97996fb6f3dce814499d6a2e4a"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.1.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2db0849f199c36606f7025a9ff9a6e5d9d093244a7f37d20b627ffc9f14283dc"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
