class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.9.0/kranz_0.9.0_Darwin_arm64.tar.gz"
      sha256 "d41665bac0ac1f8c8e29b62a709f7cee462fb382ff79d31ac46f7a46ecbc31cd"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.9.0/kranz_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "8d65f4b578f02e1d7d95fe41bef199e0e760f135abcda843694621e8dbb64f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.9.0/kranz_0.9.0_Linux_arm64.tar.gz"
      sha256 "ec8458c1804d9a682461fe9fcd8e09ce3cafb2c39454be1001d1bc04e9f3ca06"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.9.0/kranz_0.9.0_Linux_x86_64.tar.gz"
      sha256 "0ad58cb4c9fd3de753e5495ef5e24b99fe15c94c711271da3ea3c2ab7fc93ca1"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
