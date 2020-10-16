class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/2.0.tar.gz"
  sha256 "afbde70742f4bac3f3b030b36531fe0bd67dbdda61ce0457f3a1e5681405df33"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release", "all"

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
