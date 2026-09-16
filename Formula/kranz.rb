class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.2/kranz_0.15.2_Darwin_arm64.tar.gz"
      sha256 "2513d9bf66189e0a054fa7a3c45262bf6162a0b1d16d5f6a22581ae9994a9f65"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.2/kranz_0.15.2_Darwin_x86_64.tar.gz"
      sha256 "75bc3edbb71c735dd50aeffbd3c68090e8871f24043a6497398f6b2fecca855a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.2/kranz_0.15.2_Linux_arm64.tar.gz"
      sha256 "f18d5b84fa45b6ef0ca1ac91c828592b8ee2453ec651655dd102621014235c5d"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.2/kranz_0.15.2_Linux_x86_64.tar.gz"
      sha256 "417b8a0718f94c3789c968c54b271cb370828ea603d1e370dc59da678dabddb2"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
