require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.6.tar.gz"
  sha1 "ec7f276d61277590fa10d7dac38f5b47f5b51362"
  version "0.0.6"

  def install
    system("make prefix=#{prefix} install")
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
