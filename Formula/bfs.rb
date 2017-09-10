class Bfs < Formula
  version '1.1.2'
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/#{version}.tar.gz"
  sha256 "bf69e7f21305b37df16d2450e227c4fc0377da44419aac09fe740465e629c322"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release"

    bin.install "bfs"

    pkgshare.install "tests.sh"
    pkgshare.install Dir["tests"]
  end

  test do
    cp_r pkgshare/"tests", testpath
    cp pkgshare/"tests.sh", testpath
    system "./tests.sh", "--bfs=#{bin}/bfs"
  end
end
