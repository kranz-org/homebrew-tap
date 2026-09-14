class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.0/kranz_0.15.0_Darwin_arm64.tar.gz"
      sha256 "21907b6f616eea7ed9f96900c7a8ca8085f647a2d408ff10538b77c07c24fd90"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.0/kranz_0.15.0_Darwin_x86_64.tar.gz"
      sha256 "4106eaaf6fc0c92ddcb73f374aae598bd4362323ecbbab1e440f63e32d35a565"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.0/kranz_0.15.0_Linux_arm64.tar.gz"
      sha256 "80a8f89bb219e704fe880e589a8d809e27eb53a852cc61e4ffbcf8ad6f4fed20"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.15.0/kranz_0.15.0_Linux_x86_64.tar.gz"
      sha256 "c9f34d95dffa005b5c8792c74a732d30f13a1e5b1171c511d8382d84a082b045"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
