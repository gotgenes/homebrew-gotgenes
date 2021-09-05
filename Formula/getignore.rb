class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v2.1.0",
        revision: "549da0a0f7d4151cb288efceea4947e9c6bc8250",
      }
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
    bash_completion.install "completions/bash/getignore-completion.bash"
    zsh_completion.install "completions/zsh/_getignore"
  end

  test do
    system "getignore", "--version"
  end
end
