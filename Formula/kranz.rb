class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.3/kranz_0.16.3_Darwin_arm64.tar.gz"
      sha256 "2866201df52ff35c29155786f26499dd30e504004e3c79690c9a7edb915fb6d1"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.3/kranz_0.16.3_Darwin_x86_64.tar.gz"
      sha256 "ee587b4546c075ba198be498e5f7b6cbf7313a7f5678d4fb1bf6227d77d96adc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.3/kranz_0.16.3_Linux_arm64.tar.gz"
      sha256 "020d1b3e639f460ae8a94c00937eb355087fe668a59b92060c1c30ef464f7f8b"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.3/kranz_0.16.3_Linux_x86_64.tar.gz"
      sha256 "c9e722b08f57ecc6d1d8d7ea4b1359d34d3df4919e1e202d59299fe8c015a101"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
