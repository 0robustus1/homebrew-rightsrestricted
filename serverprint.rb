require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.5.tar.gz"
  sha1 "844ace272599e94e53e50808c8dfc22ca364eaeb"
  version "0.0.5"

  def install
    prefix.install Dir['*']
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
