class Bfs < Formula
  desc "Breadth-first version of find."
  homepage "https://github.com/tavianator/bfs"
  url "https://github.com/tavianator/bfs/archive/1.4.tar.gz"
  sha256 "87ca4bffc9e8160438cb382bb0d0ef11bbaabec2a6bfd3135c8220e1077b6beb"
  head "https://github.com/tavianator/bfs.git"

  def install
    system "make", "release", "tests/mksock"

    bin.install "bfs"

    man1.install "bfs.1"

    pkgshare.install "tests.sh"
    pkgshare.install Dir["tests"]
  end

  test do
    system "touch", "./file"
    system "chmod", "u+s", "./file"
    system "ls", "-l", "./file"
  end
end
