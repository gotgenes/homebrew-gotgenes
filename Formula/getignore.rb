class Getignore < Formula
  desc "A command-line tool to bootstrap .gitignore files from GitHub .gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore/archive/1.0.0.tar.gz"
  sha256 "064b91400b9d652f86a0a21faba6d4003f3ab9d271287a4536cc1a16413b9bb6"

  head "https://github.com/gotgenes/getignore.git"

  depends_on "go" => :build
  depends_on "glide" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GLIDE_HOME"] = HOMEBREW_CACHE/"glide_home/#{name}"

    getignore_path = buildpath/"src/github.com/gotgenes/getignore"
    getignore_path.install buildpath.children

    cd getignore_path do
      system "glide", "install"
      system "go", "build", "-o", "getignore"
      bin.install "getignore"
    end
  end

  test do
    system "getignore" "--version"
  end
end
