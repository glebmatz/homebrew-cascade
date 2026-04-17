class Cascade < Formula
  desc "Terminal rhythm game with automatic beatmap generation"
  homepage "https://github.com/glebmatz/cascade"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/glebmatz/cascade/releases/download/v0.4.0/cascade-aarch64-apple-darwin.tar.gz"
      sha256 "159fe8c5b546aafd2ece6014bb5ac01be5d9cb68fb1abfec9810b923ad3f3ed0"
    else
      url "https://github.com/glebmatz/cascade/releases/download/v0.4.0/cascade-x86_64-apple-darwin.tar.gz"
      sha256 "2c5bbce68660257f3fec33b43e1421240b1f88bd529c96ad0389aae7598daba8"
    end
  end

  on_linux do
    url "https://github.com/glebmatz/cascade/releases/download/v0.4.0/cascade-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5dbd603726ae20adae3f2dd23a5c1156672847bacc7176ad3d5a0d7aab009259"
  end

  def install
    bin.install "cascade"
  end

  test do
    assert_match "Cascade", shell_output("#{bin}/cascade help")
  end
end
