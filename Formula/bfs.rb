class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.3.1.tar.gz"
  sha256 "c3ed60001804ca79a3794935ab6b9927bd14df42dc34e475b34d62929fcc5a98"
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
