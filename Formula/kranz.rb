class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.0/kranz_0.8.0_Darwin_arm64.tar.gz"
      sha256 "2579a49b1d337f88ebe1309c1ce3b29a2b9d1115d719eb4b6d41de8872178b82"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.0/kranz_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "2cb3cd0cf62b5ebfdb21d8ebc0d2799fb39c76c06927e2e1227f4bbac6924e09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.0/kranz_0.8.0_Linux_arm64.tar.gz"
      sha256 "cbf29739575780d7b27fa7b15d10504e29aa412f4d4179fe6df84e6317deb562"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.0/kranz_0.8.0_Linux_x86_64.tar.gz"
      sha256 "dc569d96f999067f72f0e87502ef0356eef6e1757740d7ac62ac133647522250"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
