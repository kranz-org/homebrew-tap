class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.1/kranz_0.7.1_Darwin_arm64.tar.gz"
      sha256 "6e42709ddcb3a239be5315447351b4b981e34b5f88eb809f8622fa50f028007d"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.1/kranz_0.7.1_Darwin_x86_64.tar.gz"
      sha256 "197d81ea8667fca757daf062ff0d2302ee30c09b4adace3b14e9b61ebcf354af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.1/kranz_0.7.1_Linux_arm64.tar.gz"
      sha256 "8172da55e52af07d5d84487bf627eb3af699e35d4d3acb4e463ad2c286a9a519"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.7.1/kranz_0.7.1_Linux_x86_64.tar.gz"
      sha256 "de22372004beeec2956e9733c2eeaba8e32d58739cfca7e26f627217eda2103e"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
