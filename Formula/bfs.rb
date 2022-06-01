class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.6.tar.gz"
  sha256 "5812a4c62004c851eb02e23c0b6698dbb40061ce1c4069bb33c5b14f5361d81b"
  head "https://github.com/tavianator/bfs.git"
  depends_on "oniguruma"

  def install
    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
