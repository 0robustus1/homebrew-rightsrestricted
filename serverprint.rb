require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.1.1.tar.gz"
  sha1 "d26352c5007ffb9c9d91b4c79685946b41c60fe7"
  version "0.1.1"

  def install
    system("make prefix=#{prefix} install")
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
