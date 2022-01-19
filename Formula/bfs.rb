class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.3.tar.gz"
  sha256 "15d5455af3a399561db1d701f2032d743a7a1a201d60df2b55cafd3517277bd3"
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
