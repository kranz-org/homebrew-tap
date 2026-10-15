class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.0/kranz_0.17.0_Darwin_arm64.tar.gz"
      sha256 "11747c60e5891d30a7c7585992c7ea0dc1a98110fc928d3e6f94b71f640c9f46"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.0/kranz_0.17.0_Darwin_x86_64.tar.gz"
      sha256 "26d64ebbeaa25b3c774b1a7a45fd4fdea46ea03f6a23326ac3599f45a566a753"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.0/kranz_0.17.0_Linux_arm64.tar.gz"
      sha256 "acfd160ca9065fe6a8849830cf13d2a6519f730cf264ae80d62f6a27677f9e7f"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.17.0/kranz_0.17.0_Linux_x86_64.tar.gz"
      sha256 "a9ef6c15b6bdcde18a1e076e52d6adeb40283b39b31ad43cb9dd767f034c7e27"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
