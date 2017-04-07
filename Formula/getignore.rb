class Getignore < Formula
  desc "A command-line tool to bootstrap .gitignore files from GitHub .gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore/archive/0.3.0.tar.gz"
  sha256 "f7aae10dbea8233aa3852da32dbf51c2b72b39a6066ba0c64a00044d0b84f181"

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
