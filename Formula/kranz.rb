class Kranz < Formula
  desc "Keyboard-first local service orchestrator with a terminal UI"
  homepage "https://github.com/kranz-org/kranz"
  url "https://github.com/kranz-org/kranz/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "b71dee6f79fe178e2ae139a0a988b4d691bdc973d7395127d5e98f03989a3edf"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=v#{version}
      -X main.buildTime=release
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/kranz"
  end

  test do
    assert_match "kranz #{version}", shell_output("#{bin}/kranz --version")
  end
end
