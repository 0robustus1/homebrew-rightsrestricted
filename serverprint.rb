require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.5.tar.gz"
  sha1 "a2593aaf51ff4d4d3bd9ffdf3724de16bbb8024d"
  version "0.0.5"

  def install
    prefix.install Dir['*']
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
