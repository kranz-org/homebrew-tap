class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.2/kranz_0.8.2_Darwin_arm64.tar.gz"
      sha256 "5952d93d0387ee77859f78e9b023ca0d414955f4d08f5e3188b29bc8f551294f"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.2/kranz_0.8.2_Darwin_x86_64.tar.gz"
      sha256 "e32b7efbc15a19ca434a605c8b58ce36216574b857df4203807cb14fcee30a73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.2/kranz_0.8.2_Linux_arm64.tar.gz"
      sha256 "62847802ae6e28c56b667b644765690ac0c8dc919af7fafa32ddc214730dcad5"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.8.2/kranz_0.8.2_Linux_x86_64.tar.gz"
      sha256 "da17d60f86efa6382b80c317b90bc462aa3f9fdf62f553c3b5abc3e76be56ab0"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
