class Bfs < Formula
  version '1.3'
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/#{version}.tar.gz"
  sha256 "3e6af64bce245dd5085e570356e2556764ac3f1bac53b8c86caec1bea8683e31"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release"

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
