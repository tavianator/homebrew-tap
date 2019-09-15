class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/1.5.1.tar.gz"
  sha256 "28defd5f66043c5bfda8b715e9e3eac92a0a1f59b3ec39c78d527a2fb5e0735b"
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
