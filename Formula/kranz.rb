class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.2/kranz_0.16.2_Darwin_arm64.tar.gz"
      sha256 "11ebc8733f16af3b659279305669060bd6d168121baf5b8dcbc79eaaa8cdeab4"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.2/kranz_0.16.2_Darwin_x86_64.tar.gz"
      sha256 "286c82b60322671ce362d4c150ed302ea8dde5fbdc0e8874e59c0d11b80c5a40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.2/kranz_0.16.2_Linux_arm64.tar.gz"
      sha256 "26ad9f49b4d3ead5ae52054dd84c59fbda8c58f143b1a36ce145c3d5143d3e09"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.2/kranz_0.16.2_Linux_x86_64.tar.gz"
      sha256 "c6148630a5e14c2d14af2c324d9f9bd7f272a07c4301465f726324db6a0972a5"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
