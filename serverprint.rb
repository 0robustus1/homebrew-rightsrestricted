require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.3.tar.gz"
  sha1 "80d3e3f9f48cccf3722efe7f96e821f2b3188c56"
  version "0.0.3"

  def install
    mv('serverprint.pl', 'serverprint')
    bin.install('serverprint')
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
