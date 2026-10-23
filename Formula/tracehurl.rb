class Tracehurl < Formula
  desc "Evidence-First Verification Report CLI for Hurl Test Suites"
  homepage "https://github.com/abhiudayg/trace-hurl"
  url "https://github.com/abhiudayg/trace-hurl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2364a58f88c3ae079ac24c99c079bcf77f38bad13fb372ad5ade9cd76f86bb80"
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
