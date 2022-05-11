class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.5.tar.gz"
  sha256 "410be5de74bfc5dece213731d3a8462310789118d299fb14f02bd9b0fdd66875"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release", "all"

    bin.install "bfs"

    man1.install "bfs.1"

    bash_completion.install "completions/bfs.bash" => "bfs"

    pkgshare.install "tests.sh"
    pkgshare.install Dir["tests"]
  end
end
