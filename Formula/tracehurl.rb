class Tracehurl < Formula
  desc "Evidence-First Verification Report CLI for Hurl Test Suites"
  homepage "https://github.com/abhiudayg/trace-hurl"
  url "https://github.com/abhiudayg/trace-hurl/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "38093ba36b9bda975c4ba28681b3e63cc36a7504a61386808d05a42490e958b6"
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
