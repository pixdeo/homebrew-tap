class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.8.1/editxr-v1.8.1-macos-universal.zip"
  sha256 "a7aaa68e7bc2816bf774cb7f3e3b0135a615bdf69c2eddd47de463fbe0eb7ee9"
  version "1.8.1"
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
