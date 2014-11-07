require "formula"

class Serverprint < Formula
  homepage "https://github.com/0robustus1/serverprint"
  url "https://github.com/0robustus1/serverprint/archive/0.0.7.tar.gz"
  sha1 "f1f39f46f80b7765e11bb2e5bfd5df8212ad0e22"
  version "0.0.7"

  def install
    system("make prefix=#{prefix} install")
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
