require "formula"

class GitExternals < Formula
  homepage 'https://github.com/0robustus1/git_externals'
  url 'https://github.com/0robustus1/git_externals/archive/0.0.1.tar.gz'
  head 'https://github.com/0robustus1/git_externals.git'
  sha1 'a8e3f5313f955c4083680204efca7aaa81447559'

  depends_on 'gawk' => :recommended

  def install
    cp('clone_init.rb', 'git-rr-init')
    cp('clone_init.rb', 'git-rr-clone')
    cp('co_back.sh', 'git-co-back')
    cp('history_files.sh', 'git-history-files')
    cp('list_unmerged_branches_with_contributions.sh', 'git-list-unmerged-branches-with-contributions')

    bin.install('git-rr-init')
    bin.install('git-rr-clone')
    bin.install('git-co-back')
    bin.install('git-history-files')
    bin.install('git-list-unmerged-branches-with-contributions')

    if build.with?('gawk')
      cp('latest_branches.sh', 'git-latest-branches')
      bin.install('git-latest-branches')
    end
  end

  def caveats
    <<-CAVEAT
These scripts are by no means a finished product. They do not
cover every edge case. But usually they should work as excepted/documented.

On gawk, this is needed by latest-branches for its enhanced regex-capabilities.
But if you do not need that script you can deactivate gawk support.
    CAVEAT
  end

end
