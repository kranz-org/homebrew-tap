class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.0/kranz_0.7.0_Darwin_arm64.tar.gz"
      sha256 "90adeec7861ac2357275b07646efb3916ab8fce980a3d7e7548af3172fa028f0"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.0/kranz_0.7.0_Darwin_x86_64.tar.gz"
      sha256 "1e125c07026418477bfb423c8a2541e58599cd5c6d5ed8e646922b8bd7cec324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.0/kranz_0.7.0_Linux_arm64.tar.gz"
      sha256 "f8903749452594fa2f7f40e7c4cdc98ad7b7088b2d5b6d8e0b88a0df519f4f5f"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.0/kranz_0.7.0_Linux_x86_64.tar.gz"
      sha256 "dd9e95e706ac0b872324e6189c96694b25a7e1057e30527bd33babe4975f804d"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
