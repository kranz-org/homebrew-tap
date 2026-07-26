class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.2.0/kranz_0.2.0_Darwin_arm64.tar.gz"
      sha256 "c4768aec994c71ff4af557b88df7a6a093d59b15b5ccd9f86397e3f6a3c67876"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.2.0/kranz_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "eaa49d640be1f9274019563c8bb9ff1a9311233580211e139da5b4073b810c82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.2.0/kranz_0.2.0_Linux_arm64.tar.gz"
      sha256 "fc1238476e48463c828f7da5a98e027075ee47cc61fac57d2944302dff1a2250"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.2.0/kranz_0.2.0_Linux_x86_64.tar.gz"
      sha256 "0cf9244bc07050e8ef3699bf5baffa514471b1f1564c9f7a5867febbe5e891c6"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
