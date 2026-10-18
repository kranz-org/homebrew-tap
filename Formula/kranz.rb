class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.1/kranz_0.17.1_Darwin_arm64.tar.gz"
      sha256 "15635c5727f7f38fabe6be2b4ad2e19dc4b405e59838b08c61ff77827afb18c1"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.1/kranz_0.17.1_Darwin_x86_64.tar.gz"
      sha256 "7cf614bfd5e20cae756c7f2785316f23743a7f291144794539adc5a1efb16235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.1/kranz_0.17.1_Linux_arm64.tar.gz"
      sha256 "aac8396ced83b383e52a54e7d5fc2daceaf2fbd7ecc9da22e242bc0a1cc617f7"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.1/kranz_0.17.1_Linux_x86_64.tar.gz"
      sha256 "71c93e29addf95955baf6347765351ee50144493efaf304e99c8d23c11673c97"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
