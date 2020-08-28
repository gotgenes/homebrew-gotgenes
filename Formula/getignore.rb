class Getignore < Formula
  desc "Bootstraps .gitignore files from GitHub gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore.git",
      {
        tag:      "v2.0.0",
        revision: "85dfa61c97a408e4b339093536f6777129136bf0",
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
