class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.1/kranz_0.13.1_Darwin_arm64.tar.gz"
      sha256 "1056eeff0a4c53eaf3e8e6d694df10616d9caf4747ad5b9547c3dd1981c46f16"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.1/kranz_0.13.1_Darwin_x86_64.tar.gz"
      sha256 "698c5b4f97621310c105403d727bd44b5532f507358ca198eec29271a9938f74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.1/kranz_0.13.1_Linux_arm64.tar.gz"
      sha256 "90eaffaacfe38f73147dcd8e604f67ec4a40b41c0e39f4599b5959f6f64d35d9"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.13.1/kranz_0.13.1_Linux_x86_64.tar.gz"
      sha256 "1395c0b8d76e47c06fd8836bb7e79feab31b5676c6caf30d17f8cfade04c047e"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
