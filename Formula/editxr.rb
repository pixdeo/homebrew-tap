class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.7.0/editxr-v1.7.0-macos-universal.zip"
  sha256 "47d2663fb84ba3cb5fd5e2fcde66cacbb450d73aaecec2956c626e1497f710f0"
  version "1.7.0"
  license "MIT"

  # Prebuilt Developer ID-signed, notarised universal (arm64 + x86_64) binary.
  depends_on :macos

  def install
    bin.install "editxr"
  end

  test do
    assert_match "editxr", shell_output("#{bin}/editxr --version")
  end
end
