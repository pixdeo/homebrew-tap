class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.8.0/editxr-v1.8.0-macos-universal.zip"
  sha256 "1c4db4b4165ba1c68d8a0f92edeeff1930300d217111a2f3e15d37d111aa187f"
  version "1.8.0"
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
