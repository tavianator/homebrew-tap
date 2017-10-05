class Bfs < Formula
  version '1.1.3'
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/#{version}.tar.gz"
  sha256 "51bd5af3a187f36babe68d736af7d6dc0dae5e3c85d72aba9b3d8af60c44dc5b"
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
