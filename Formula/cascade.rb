class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.2.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "3af837c4f8571e2d7869b7c088516d72289aea94f3320a76b1c4ed85d5d78f55"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.2.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "bdcb97da55c2ec2db111e9063da38cf85d97eb170c2660b5730ed835473aa077"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.2.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2a8f92bee98873824578bcf6c94c2c2036b66364e0b069ca95076f66370b4bd3"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
