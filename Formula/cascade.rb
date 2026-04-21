class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.7.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "96193c6e2163e3ea34acd62e5fd9835aa6a855559dbe10bfbe9b9542718243a7"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.7.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "5b348910680bb054528843349180f99680c47b51d86643191c89fb17cbe1d0a1"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.7.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "73bbffa706d5fc22351d58ecb5786a83376d66ea23f48522cb21a5408f820f52"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
