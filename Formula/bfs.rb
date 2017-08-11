class Bfs < Formula
  version '1.1.1'
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/#{version}.tar.gz"
  sha256 "4a96ecad38ad130e4667e658b47a477530347849dfca0d573a52e5f52df156b9"
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
