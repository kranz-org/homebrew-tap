class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.12.1/kranz_0.12.1_Darwin_arm64.tar.gz"
      sha256 "529a7fcb5b731a90b5633761ab877cc65e6aba2602fc681141dd1134b4b59504"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.12.1/kranz_0.12.1_Darwin_x86_64.tar.gz"
      sha256 "c6495d67c308990539e5d50150fd1f81441021694f1ac438fde8039b08fa5be4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.12.1/kranz_0.12.1_Linux_arm64.tar.gz"
      sha256 "a4ecfdb19d71c9069b3471ce011b326d823f2f1ae66084e843bf341b90c103fc"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.12.1/kranz_0.12.1_Linux_x86_64.tar.gz"
      sha256 "340bca1ae88adc8f4baf20f44e0497bd3472df5110e53c47cfb85fca4c096081"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
