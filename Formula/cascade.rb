class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.3.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "151494ace4dd098fc1f583f9763918b314e0de373a2f9b4178ae8ec3ce6eab36"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.3.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "b0a45b7eabd2245efe940e57b0a88451b9e7a7c44fec96a84a894d66c6b662b9"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.3.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a13e8266a0fec279271b27b9cf314f8aa42b06040d7b28b2bfd6a4924fa4c677"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
