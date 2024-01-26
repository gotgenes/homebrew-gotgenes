class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v5.0.3",
        revision: "a8f19d386c5dffa2c2e0ae59d3a9a21a9295408a",
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
