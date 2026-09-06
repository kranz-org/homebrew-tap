class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.0/kranz_0.13.0_Darwin_arm64.tar.gz"
      sha256 "08f861a35b931e83817b934f3e24b1c6295b49c2e2b96f96c0a3749a6c1ffca4"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.0/kranz_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "f0dab88535a10c4e4474c56a26a17cc81634fdf9e9bd6619887e0ef8caa884c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.0/kranz_0.13.0_Linux_arm64.tar.gz"
      sha256 "c99edcb40d482f05ca7f6b80a8139f4de0c0f05fd7895f50852984dc3d8c0f68"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.0/kranz_0.13.0_Linux_x86_64.tar.gz"
      sha256 "8eed07a739ae30b4e68b331f022eecede9940739813b6eb1d32918c5fbd64cd3"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
