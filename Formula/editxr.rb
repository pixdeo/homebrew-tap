class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.1.0/editxr-v1.1.0-macos-universal.zip"
  sha256 "d34df8f6d1a9dc11bd41f174ca598c4b34a0c121774a51f0b7737865d0cfa1c1"
  version "1.1.0"
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
