class Getignore < Formula
  desc "A command-line tool to bootstrap .gitignore files from GitHub .gitignore templates"
  homepage "https://github.com/gotgenes/getignore"
  url "https://github.com/gotgenes/getignore/archive/0.2.0.tar.gz"
  sha256 "22f6bcde53f22885d3e39f2d928a78bde78c24db7cdf4f93f0cb2be0a8a29698"

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
