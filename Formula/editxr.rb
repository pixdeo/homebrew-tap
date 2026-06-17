class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.3.0/editxr-v1.3.0-macos-universal.zip"
  sha256 "71127f697b492375ff49dc94d16e736ac005683f3a2a879474a3c046a54875b5"
  version "1.3.0"
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
