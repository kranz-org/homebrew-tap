class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.0/kranz_0.11.0_Darwin_arm64.tar.gz"
      sha256 "e3b797ca44e8e8890b2bc38a65604008e07f0721de9fb216ae6b3c1e4d23f912"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.0/kranz_0.11.0_Darwin_x86_64.tar.gz"
      sha256 "747d1bb6a29102c0aa03d6647c98e9364c8c3236053470dd801d85033ec51f5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.0/kranz_0.11.0_Linux_arm64.tar.gz"
      sha256 "cdc716b4f024b4cbd58c732fa94238a126e9b21df9844230f7d898a12057c2aa"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.11.0/kranz_0.11.0_Linux_x86_64.tar.gz"
      sha256 "eeae0715455e47d1824515bfef72978d09e5fd0ac0c72d4d5389731a4ac9c4d0"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
