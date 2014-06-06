require "formula"

class Quazarcoin < Formula
  homepage "http://www.quazarcoin.org"
  head "https://github.com/quazarcoin/quazarcoin.git"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "miniupnpc"

  def install
    system "make"
    bin.install "./build/release/src/quazarcoind"
    bin.install_p "./build/release/src/simplewallet", "simplewallet-qcn"
  end
end
