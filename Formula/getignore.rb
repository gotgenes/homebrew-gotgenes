class Getignore < Formula
  desc "A command-line tool to bootstrap .gitignore files from GitHub .gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore/archive/0.1.0.tar.gz"
  sha256 "ed877423f3e4e1dff61a0c6837bca6ae2eda6c296a17343ba101f58446abbda1"

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
