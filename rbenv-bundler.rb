require 'formula'

class RbenvBundler < Formula
  homepage 'https://github.com/0robustus1/rbenv-bundler'
  url 'https://github.com/0robustus1/rbenv-bundler/archive/0.98.1.tar.gz'
  sha1 '4b3a79c1ded651f38916eeaeae79e5207b7dc562'
  head 'https://github.com/0robustus1/rbenv-bundler.git'

  depends_on 'rbenv'

  def install
    prefix.install Dir['*']
  end
end
