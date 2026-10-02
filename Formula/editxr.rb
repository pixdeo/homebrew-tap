class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.9.0/editxr-v1.9.0-macos-universal.zip"
  sha256 "32e6fd6bd44de19ee1aa5f5c13021c4f169756123e3a2eb28493933fd56e8184"
  version "1.9.0"
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
