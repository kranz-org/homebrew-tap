class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.1.1/kranz_0.1.1_Darwin_arm64.tar.gz"
      sha256 "5c4417332b6cc98a1d6096432be5f3f6687aedbbe8b695f1770bff3dfd0d81dd"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.1.1/kranz_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "eaa7620b548b6c8caaf487ab5f584f69e7d7dd43f31003cd24865799ecfc8a18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.1.1/kranz_0.1.1_Linux_arm64.tar.gz"
      sha256 "1f4fda0eb769ae95ea18da21616f8ae5d41ce420f24a3c1266d51f83cda61da5"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.1.1/kranz_0.1.1_Linux_x86_64.tar.gz"
      sha256 "7ff95f04c2d16308e25e04757553aedf93a5772bd8a5025218182812a13a5e6d"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
