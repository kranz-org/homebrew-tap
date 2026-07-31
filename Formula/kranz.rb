class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.4.0/kranz_0.4.0_Darwin_arm64.tar.gz"
      sha256 "92559c374c31b7951c10ee446f90a72d87e53287625f44111903fc0e6b7b07f1"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.4.0/kranz_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "0725a3580b08fd9312f2ec52f72c58fd046a8eb1a5416f61851a3e7bd93ac37d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.4.0/kranz_0.4.0_Linux_arm64.tar.gz"
      sha256 "3899d62aee0a9d73889ff7293fa8c08e1a86f71722e914c3f57d58429bd8189b"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.4.0/kranz_0.4.0_Linux_x86_64.tar.gz"
      sha256 "e8745afd727a5e06906520346c1792a2f16cbf6808530dfa8dd7912fca23eab8"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
