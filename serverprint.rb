require "formula"

class Serverprint < Formula
  homepage "https://gist.github.com/0robustus1/9382ccc921619ab95a88"
  url "https://gist.githubusercontent.com/0robustus1/9382ccc921619ab95a88/raw/fe74bfa8be37e11dcb432c530acc8d7dfd950c47/serverprint.pl"
  sha1 "04b71aa9c6da7ffd072f24a99a92c0ec6cfa7d17"
  version "0.0.2"

  def install
    mv('serverprint.pl', 'serverprint')
    bin.install('serverprint')
  end

  test do
    system "#{bin}/serverprint | grep 'serverprint -p Printer -s Server -f File -n NoOfCopies -c -o'"
    assert_equal $?, 0, 'expected empty command to return help text'
  end
end
