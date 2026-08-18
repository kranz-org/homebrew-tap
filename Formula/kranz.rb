class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.2/kranz_0.7.2_Darwin_arm64.tar.gz"
      sha256 "15bbd52806f9e70d96d0e1292572cd802b64b5591edab63c9e6747abc47736a9"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.2/kranz_0.7.2_Darwin_x86_64.tar.gz"
      sha256 "2b00cedbf47fec6bce2fb2498029715bad8266952220ec142e6c54bed0a9f603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.2/kranz_0.7.2_Linux_arm64.tar.gz"
      sha256 "392605a0922a1f4357a3eb0752e0d19cdc95ac1bd529345634dd88035a20c0df"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.2/kranz_0.7.2_Linux_x86_64.tar.gz"
      sha256 "14a7c3422e5d99be23082dd7649a9a43e02a960869a5cc379d46bee7cb20538b"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
