class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.5.0/kranz_0.5.0_Darwin_arm64.tar.gz"
      sha256 "60dfcf252899de14292c2e948d946847147cc66f804988ed6af48d425f4e8a9e"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.5.0/kranz_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "606756b040a92871fbe056b4a8371b8a71ce5dd23be47282f9973b271f7aa1a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.5.0/kranz_0.5.0_Linux_arm64.tar.gz"
      sha256 "d28e11505e8b494ee535ad6293007756d351d92fe07147a50404730165580be8"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.5.0/kranz_0.5.0_Linux_x86_64.tar.gz"
      sha256 "c8afab166f7371c3ca239790cdd0dd5dcf9cd5c8d94aee53ba4f89f4193effb7"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
