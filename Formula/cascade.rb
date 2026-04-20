class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.6.1/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "a91c71ea93300579b1a588f1ec759c358a3c2d5f530e88b4126e4848e357389b"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.6.1/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "fc37d80fece56753ddef5afc13952172da97cd044257b3d6b35c8c59a658511d"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.6.1/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "87c84390466695b1c73c63877312a796bfde4789c0a699a0a710dc03194a0445"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
