class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.0/kranz_0.6.0_Darwin_arm64.tar.gz"
      sha256 "1e0b1be4d92e818fa1dbff95d8ea731bf8565b4a633fed3170333010332957c2"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.0/kranz_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "baa05c0a80af6f7b810a55b3113609060af75e4c1279d122a94beee496e3f0ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.0/kranz_0.6.0_Linux_arm64.tar.gz"
      sha256 "5ee85503f6dbb4f586f07ba19d9fb7d0f11feebc01af87dc5b7d94a4725f56c9"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.6.0/kranz_0.6.0_Linux_x86_64.tar.gz"
      sha256 "d69616cfbd9619508da338363d7fdc39b48b48c4c626670630e960b202d71a86"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
