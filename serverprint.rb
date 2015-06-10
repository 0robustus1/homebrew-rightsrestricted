require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.1.2.tar.gz"
  sha1 "270e6e137b9922ef103d62f5ef62d06d0b4c4420"
  version "0.1.2"

  def install
    system("make prefix=#{prefix} install")
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
