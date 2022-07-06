class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.6.1.tar.gz"
  sha256 "15e35b46774af305cbdfbfaa9889591440579a8233bc7308e050ec27b791647d"
  head "https://github.com/tavianator/bfs.git"
  depends_on "oniguruma"

  def install
    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
