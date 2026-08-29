class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.1/kranz_0.11.1_Darwin_arm64.tar.gz"
      sha256 "0821d20435dc8be48209bb72ad1161622a154dfa1416501ff9dce11bda9d654e"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.1/kranz_0.11.1_Darwin_x86_64.tar.gz"
      sha256 "d595e48ee7503e35b3ccf19f678d48e9ad9f44bd2390dfb2aa6d34eb2a33de87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.1/kranz_0.11.1_Linux_arm64.tar.gz"
      sha256 "1df60ca316f835c5b2439002ec6634b44ed171730308f543cdfeaefe58f7647b"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.1/kranz_0.11.1_Linux_x86_64.tar.gz"
      sha256 "c6ef235da658feabef29f6746841ce38fdc7c0a805caf46598381677d3b415ee"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
