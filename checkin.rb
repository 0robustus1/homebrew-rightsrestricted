require "formula"

class Checkin < Formula
  homepage "https://github.com/0robustus1/checkin"
  url "https://github.com/0robustus1/checkin/archive/0.1.1.tar.gz"
  sha1 "04a5af4f8d12c0fb2250ba3aebf506d469c60813"

  depends_on "cmake" => :build
  # Already comes with Mac OS X
  # depends_on "sqlite3"

  def install
    system "make"
    ENV["PREFIX"] = prefix
    system "make install"
  end

  test do
    system "#{bin}/checkin -sd 05/2014 | grep -q 'Status for month: 05/2014'"
    assert_equal $?, 0, 'expected status command to return valid output'
  end
end
