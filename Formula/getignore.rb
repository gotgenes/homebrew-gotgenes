class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v3.0.0",
        revision: "e64d137cfccf59826937f48ea95e2f4e753f90e5",
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
