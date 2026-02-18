class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  version "5.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.3/getignore-v5.0.3-darwin-amd64.tar.gz"
      sha256 "227f8d489cfe7b1d3bc9a5612966d897df36964d6589cec2cade5b5eec75264a"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.3/getignore-v5.0.3-darwin-arm64.tar.gz"
      sha256 "bdcb7964948ee554ac4c9c4017f7a258d2b19d3c3b8e77be90f77f7f1f3ded8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.3/getignore-v5.0.3-linux-amd64.tar.gz"
      sha256 "510976381d0248d74646e47cf0399b941d3cb30627e0a48d830a480d6295177a"
    end
    on_arm do
      url "https://github.com/gotgenes/getignore/releases/download/v5.0.3/getignore-v5.0.3-linux-arm64.tar.gz"
      sha256 "2e515a87280b22e7b524bf1a71444e89558dba25d8e9a82d17e013ec170f54af"
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
