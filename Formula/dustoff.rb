class Dustoff < Formula
  desc "Find and remove JS/TS build artifacts wasting disk space"
  homepage "https://github.com/westpoint-io/dustoff"
  url "https://registry.npmjs.org/dustoff/-/dustoff-1.0.0.tgz"
  sha256 "8cc42c03f1925bb44cde7b981a9f37e09a1a32a9cbf2630217479dd6342355d3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "dustoff", shell_output("#{bin}/dustoff --help")
  end
end
