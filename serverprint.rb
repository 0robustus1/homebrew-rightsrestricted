require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.1.0.tar.gz"
  sha1 "a3d55d19aa9a1d9a187f9274e6a9e7faa0ac9bb0"
  version "0.1.0"

  def install
    system("make prefix=#{prefix} install")
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
