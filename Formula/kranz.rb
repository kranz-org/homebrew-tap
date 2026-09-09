class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.14.0/kranz_0.14.0_Darwin_arm64.tar.gz"
      sha256 "89d63283f3d8f48400dc9b1a2f00110ad34c15c997f24d861e0ab71b1a5fb880"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.14.0/kranz_0.14.0_Darwin_x86_64.tar.gz"
      sha256 "1241abed5694381c128c62c64327fb82687e01b69f455031195509233361f14b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.14.0/kranz_0.14.0_Linux_arm64.tar.gz"
      sha256 "7ae8b33409390c77a7f42ce2108a95cb35a4f3b710021aacef5d6feec5501f9c"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.14.0/kranz_0.14.0_Linux_x86_64.tar.gz"
      sha256 "94d46f5016eb43fb960fd8f867897e4a3ca50f8480967b6b783f2b4619911eea"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
