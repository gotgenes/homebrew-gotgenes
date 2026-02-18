class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  version "5.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.4/getignore-v5.0.4-darwin-amd64.tar.gz"
      sha256 "ee73e897b04bce35ae5e58af4d1b1f22646be1690a592e25347b0edf3943ca42"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.4/getignore-v5.0.4-darwin-arm64.tar.gz"
      sha256 "9cd7cd1645b919b7b5967f8bc94e4861688bbfdae84c2f4391961562934ed147"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.4/getignore-v5.0.4-linux-amd64.tar.gz"
      sha256 "27b7ca934684f8542f6be30fb7c46c8c458324233a7fed9626289c67720fb6b3"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.4/getignore-v5.0.4-linux-arm64.tar.gz"
      sha256 "834c11a595b4a7dc7bb55141e54ecac692f474afc72cb1c4f2284f688fddca8a"
    end
  end

  def install
    bin.install "getignore"
    bash_completion.install "completions/bash/getignore-completion.bash"
    zsh_completion.install "completions/zsh/_getignore"
  end

  test do
    system bin/"getignore", "--version"
  end
end
