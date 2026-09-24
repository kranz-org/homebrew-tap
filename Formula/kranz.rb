class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.1/kranz_0.16.1_Darwin_arm64.tar.gz"
      sha256 "bef32964d1b763066b298e9da710203f987e8a87db142d2e465f16fccfb8dd06"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.1/kranz_0.16.1_Darwin_x86_64.tar.gz"
      sha256 "ae12a9e2df9af26e650739436d03931d5040daaea46fee999e7ffe481f19bcac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.1/kranz_0.16.1_Linux_arm64.tar.gz"
      sha256 "de291514eecda8ddb2bd441784875ebed9d98ab14c270861394e9d05fafaf142"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.1/kranz_0.16.1_Linux_x86_64.tar.gz"
      sha256 "42400f006a064fba4a1f461ddae7432e041365b94c6ec69096dcdba064c921f6"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
