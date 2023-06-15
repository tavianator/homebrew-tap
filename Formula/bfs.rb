class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.6.3.tar.gz"
  sha256 "b88b7d8f8c5f701209fd2967546ad154c405281749ad458bc116b40da14b98f6"
  head "https://github.com/tavianator/bfs.git"
  depends_on "oniguruma"

  def install
    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
