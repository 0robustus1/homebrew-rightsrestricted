require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.4.tar.gz"
  sha1 "14fb9da43f8da643b963fb430546d5bd694217e7"
  version "0.0.4"

  def install
    prefix.install Dir['*']
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
