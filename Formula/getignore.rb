class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v4.0.0",
        revision: "cbadb3b5e8e58863c3946806a3abdebba87eec4e",
      }
  license "MIT"

  depends_on "go" => :build

  def install
    system "make"
    bin.install "#{name}"
    bash_completion.install "completions/bash/getignore-completion.bash"
    zsh_completion.install "completions/zsh/_getignore"
  end

  test do
    system "getignore", "--version"
  end
end
