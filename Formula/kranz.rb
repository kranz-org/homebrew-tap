class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.18.0/kranz_0.18.0_Darwin_arm64.tar.gz"
      sha256 "4b344312e73111db8bef38e139785fc2c9b274265f1e4380a3220754f45f64b8"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.18.0/kranz_0.18.0_Darwin_x86_64.tar.gz"
      sha256 "2b1eb9c0e626ac2630188d220d5a0bb12c6ca07270081aa7bd5ece37fcc85d80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.18.0/kranz_0.18.0_Linux_arm64.tar.gz"
      sha256 "38dd508558fc72d88824f5381cddf16091375cda19a7fd7423608504313be734"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.18.0/kranz_0.18.0_Linux_x86_64.tar.gz"
      sha256 "05d5f251af29ada46df2563968491252451c38a2b6d230c938a6506d20ee3f9a"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
