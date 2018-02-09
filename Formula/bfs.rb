class Bfs < Formula
  version '1.2.1'
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/#{version}.tar.gz"
  sha256 "e3e7fb7d8d7508b0b9e789b32c492d962b5726f9b6b7951cf3359c97d47b2f82"
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
