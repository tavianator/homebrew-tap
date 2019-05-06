class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/1.4.1.tar.gz"
  sha256 "d3ba0aa70e04e8768a83e40eaf3d61b57bbedff562d2d27825776caee9ebce2d"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release", "tests/mksock"

    bin.install "bfs"

    man1.install "bfs.1"

    pkgshare.install "tests.sh"
    pkgshare.install Dir["tests"]
  end

  test do
    cp_r pkgshare/"tests", testpath
    cp pkgshare/"tests.sh", testpath
    system "./tests.sh", "--bfs=#{bin}/bfs"
  end
end
