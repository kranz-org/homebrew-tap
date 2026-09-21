class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.0/kranz_0.16.0_Darwin_arm64.tar.gz"
      sha256 "091ada017c1fdf2b0701025077cdd26ede9cd7bdddb3073c0b09e77e9a53a91a"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.0/kranz_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "2b8ac526068afb72162f622c0018ad0c93173bd00163c7e4834304941c4038e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.0/kranz_0.16.0_Linux_arm64.tar.gz"
      sha256 "f1fad4c6e7b835591b57e4f1085a63b7b91324bb6485480cc2805a099ae9a02e"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.0/kranz_0.16.0_Linux_x86_64.tar.gz"
      sha256 "0815c74270c24b969c6f76c964e74723ea4a81f1c3076d798274f481f9e71bad"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
