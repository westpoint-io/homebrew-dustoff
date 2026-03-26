class Dustoff < Formula
  desc "Find and remove JS/TS build artifacts wasting disk space"
  homepage "https://github.com/westpoint-io/dustoff"
  url "https://registry.npmjs.org/dustoff/-/dustoff-1.1.0.tgz"
  sha256 "a7aef3427a09a11ede327c456387f59a7fb1cdcfb3b269d2688eaf1542340be2"
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
