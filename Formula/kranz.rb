class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.1/kranz_0.8.1_Darwin_arm64.tar.gz"
      sha256 "4fbafd1338742b3f4448b36f2420674a359edcafbda713bcb630aabd6a4ccac7"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.1/kranz_0.8.1_Darwin_x86_64.tar.gz"
      sha256 "7c3f1723708169b130072b12c37af253aaa909115401f7e32d3ab2515de97339"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.1/kranz_0.8.1_Linux_arm64.tar.gz"
      sha256 "a0926ea924a84e17c9741682882a1f67c9364c79b7a00840e4b77f33df377bb5"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.1/kranz_0.8.1_Linux_x86_64.tar.gz"
      sha256 "e3640c88cb06898ee10acb932734fe46d68807c13b93fffb83fc194b1a3b506d"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
