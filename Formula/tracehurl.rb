class Tracehurl < Formula
  desc "Evidence-First Verification Report CLI for Hurl Test Suites"
  homepage "https://github.com/abhiudayg/trace-hurl"
  url "https://github.com/abhiudayg/trace-hurl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "7fe53c1066855678c6fc3e94a76488dbf5d048a8c801f5f6086cc7fc63d6be29"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "tracehurl"
    bin.install "target/release/tracehurl"
  end

  test do
    assert_match "TraceHurl CLI", shell_output("#{bin}/tracehurl --help")
  end
end
