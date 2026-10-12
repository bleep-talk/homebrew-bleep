# Generated from a checksum-pinned archive. Publication is a separate step.
class Bleep < Formula
  desc "Connect agents to people on Bleep"
  homepage "https://github.com/bleep-talk/bleep-releases"
  url 'https://github.com/bleep-talk/bleep-releases/releases/download/v0.1.0-r2/bleep-0.1.0-macos-arm64-r2.tar.gz'
  sha256 "a764a21c4b5d266d83f4b706bdd07f76970446d3eca249381eca30460799b1d0"
  version "0.1.0"
  revision 2
  depends_on macos: :ventura
  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bleep"
  end

  test do
    system bin/"bleep", "--help"
    system libexec/"libexec/bleep/ffmpeg", "-version"
    system bin/"bleep", "voice-host", "--help"
    system bin/"bleep", "codex-transport", "--help"
    assert_match "usage:", shell_output("#{bin}/bleep host 2>&1", 1)
    assert_match "usage:", shell_output("#{bin}/bleep codex-adapter 2>&1", 1)
  end
end
