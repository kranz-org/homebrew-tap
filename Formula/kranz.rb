class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.1/kranz_0.6.1_Darwin_arm64.tar.gz"
      sha256 "86e5c4ba26dc1c1e11543ece438c375a2882c05ac71445f9d9e0cfa061543864"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.1/kranz_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "fed482012e841171e8c7213d5078ccd8a4622f5c4cf136523f344b9f239cb2ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.1/kranz_0.6.1_Linux_arm64.tar.gz"
      sha256 "a7dc59887167c5e9d9e171e154a2bf2a2e641de3b980fd8aa8c16aad1ce325fa"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.1/kranz_0.6.1_Linux_x86_64.tar.gz"
      sha256 "5dee1d9b3df282f5d00e334d6c6391e4ee3a6d5407cab4025d90637beaabb36a"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
