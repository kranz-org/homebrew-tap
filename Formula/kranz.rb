class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.4/kranz_0.16.4_Darwin_arm64.tar.gz"
      sha256 "b94632a62b9ace4e3cb594203536ea5874dc860e16268013b42ad11a5660b7ba"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.4/kranz_0.16.4_Darwin_x86_64.tar.gz"
      sha256 "840ad1593aca16bc7aa1f5b63411b9e5002d2318016f5343213453067ba85393"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.4/kranz_0.16.4_Linux_arm64.tar.gz"
      sha256 "db51bbdb06c23706ebcce5f247efdb58de49e57ecd7e489c10ee37dbcb07cff0"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.16.4/kranz_0.16.4_Linux_x86_64.tar.gz"
      sha256 "7961117d02733c17a691a4ce6f37eea1c591694191c0042ee6c335698db7f6d7"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
