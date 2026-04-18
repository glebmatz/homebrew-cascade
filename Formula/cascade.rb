class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.5.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "bffc64bc2a6f9d00018a1a67e591007027653f19ae472efc03d069993d74ecd4"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.5.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "b83beabb140f692b297fbaf977a0590d5b498cfa2fff6802f7934c396d767bdb"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.5.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ecafd01af5f0ead15299ce673d5381d56a16acfce5107a70cd4b642b45d80b25"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
