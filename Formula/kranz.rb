class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.5/kranz_0.16.5_Darwin_arm64.tar.gz"
      sha256 "08c30eff023e520f248770ab39b3df6840f68c3db220db0b9049c9cbf3b5beae"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.5/kranz_0.16.5_Darwin_x86_64.tar.gz"
      sha256 "dc8d50773f7e221997c46a5a9894d68b66dec29bd65dbb6316fe66be5bd63ae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.5/kranz_0.16.5_Linux_arm64.tar.gz"
      sha256 "4acf04b908c7022e18690ff2bc072420da7aa4a9af560ea26b058a8f502620f8"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.5/kranz_0.16.5_Linux_x86_64.tar.gz"
      sha256 "d39d8cce98f7385b417fc1f8cfbdc40ba9065dadbef056af2ce29cae8117ec9b"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
