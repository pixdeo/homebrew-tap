class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.1.2/editxr-v1.1.2-macos-universal.zip"
  sha256 "01c349b61bcd97fedafef9ca307636049fa3f4d2bbecd058cadc333b9ca5175e"
  version "1.1.2"
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
