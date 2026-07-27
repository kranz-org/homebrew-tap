class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.3.0/kranz_0.3.0_Darwin_arm64.tar.gz"
      sha256 "988ab41cd40c2806359de862897e4436275df6e0cbc3da51683cde8cbe27ddd2"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.3.0/kranz_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "c1547e9f12862682f01c9ff8a9a0077f5f93ec3a42d4379a27b89e50a0bf9b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.3.0/kranz_0.3.0_Linux_arm64.tar.gz"
      sha256 "e577454d530c4dcf8c954c351af6fe28f1484461910886773ac3dc0410933ab7"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.3.0/kranz_0.3.0_Linux_x86_64.tar.gz"
      sha256 "eccbaad3e369b9101b48d74cd4b0311d6aa1f819924e72cb2742f610ddb5464c"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
