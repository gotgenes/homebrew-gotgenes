class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v5.0.0",
        revision: "270b52b3357f82a1a893dbcca6a62f803b72f14c",
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
