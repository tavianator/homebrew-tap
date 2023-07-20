class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://tavianator.com/projects/bfs.html"
  url "https://github.com/tavianator/bfs/archive/3.0.1.tar.gz"
  sha256 "a38bb704201ed29f4e0b989fb2ab3791ca51c3eff90acfc31fff424579bbf962"
  head "https://github.com/tavianator/bfs.git"
  depends_on "oniguruma"

  def install
    system "make", "release"
    system "make", "install", "PREFIX=#{prefix}"
  end
end
