class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.10.0/kranz_0.10.0_Darwin_arm64.tar.gz"
      sha256 "39fbae2f5a7120bd12cdd7676cc88abe8fcf31a5c904c94fdad24dcf48cefecb"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.10.0/kranz_0.10.0_Darwin_x86_64.tar.gz"
      sha256 "eaaacd70d835187adf91b1d81fb5ca2386015a64d775c9c810b600377b3340b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kranz-org/kranz/releases/download/v0.10.0/kranz_0.10.0_Linux_arm64.tar.gz"
      sha256 "d268f81c27db621d075c9c060a4a4c89c8b8697cb6e9d8265f5d7216afcc2a4c"
    end

    on_intel do
      url "https://github.com/kranz-org/kranz/releases/download/v0.10.0/kranz_0.10.0_Linux_x86_64.tar.gz"
      sha256 "0c5b613d8b7c1280e2a02ec6aa21773abc3a420cf72f5e1e831cb92641bb47a2"
    end
  end

  def install
    bin.install "kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
