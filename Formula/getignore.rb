class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  version "6.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v6.0.1/getignore-v6.0.1-darwin-amd64.tar.gz"
      sha256 "f1d5ccd38a957ab452fe0701ddbd51701a21c1631f37cc23b7f95047cf800111"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v6.0.1/getignore-v6.0.1-darwin-arm64.tar.gz"
      sha256 "2fdbab6be19f9e51dc231a9284ae9ec13d2c240f0ece0a4c84e37aa20f8aa851"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v6.0.1/getignore-v6.0.1-linux-amd64.tar.gz"
      sha256 "79a3f96ce458a469f11dcc3f8335d4758a8a57e35fe7dde4f3291e5dfb1ff2d8"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v6.0.1/getignore-v6.0.1-linux-arm64.tar.gz"
      sha256 "7dcc348e38ba2fd5f4b5874e0ed36104616972610161b57544beed1350addf88"
    end
  end

  def install
    bin.install "getignore"
  end

  test do
    system bin/"getignore", "--version"
  end
end
