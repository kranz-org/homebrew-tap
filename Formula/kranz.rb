class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.1/kranz_0.15.1_Darwin_arm64.tar.gz"
      sha256 "6c63d9b5fa7732ba6042c8c33ef07abf8a374741cf6e8bffb801ecafd7c05e19"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.1/kranz_0.15.1_Darwin_x86_64.tar.gz"
      sha256 "da0f98272f4b5bcdd70c191fa81e0b1695a11cce2318e5ed03e115da873d8db0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.1/kranz_0.15.1_Linux_arm64.tar.gz"
      sha256 "81e321874de9355f6ad6c64025d6c9bb0fc7e2df73d9a81eb2acf8845219b35c"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.1/kranz_0.15.1_Linux_x86_64.tar.gz"
      sha256 "90d9e4b1f2e6d2fe78d7eb8853706b09379dc97dcc285a3082e04f4bda578319"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
