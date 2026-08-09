class Editxr < Formula
  desc "Minimalist Markdown editor for the terminal"
  homepage "https://editxr.org"
  url "https://github.com/pixdeo/editxr/releases/download/v1.6.3/editxr-v1.6.3-macos-universal.zip"
  sha256 "c1dc917265e853b342d2baef5c7720bc39e1a6b42a996e986365805b8d64e003"
  version "1.6.3"
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
