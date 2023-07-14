class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/3.0.tar.gz"
  sha256 "d367494a2fb02df16067536a44c36560e161681a38d29b49f5d599bd9b3d2651"
  head "https://github.com/tavianator/bfs.git"
  depends_on "oniguruma"

  def install
    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
