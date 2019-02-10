class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/1.3.3.tar.gz"
  sha256 "b61ae66ae7b0d7a7220a2f8ef3b6121d8fb5d1d155bd03c7e7b0067d061ae8ab"
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
