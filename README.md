# homebrew-rightsrestricted

Packaging of own software and repackaging to support specific versions of main
homebrew formulas.

## Instructions

To use this tap, you'll of course need to have [homebrew][1] installed.
Homebrew is a package manager for Mac OS X.

In order to use this tap you'll need to perform some basic command-line tasks:

- `brew tap 0robustus1/rightsrestricted` to make this tap available to your
  homebrew installation
- To be more explicit, `brew tap 0robustus1/homebrew-rightrestricted` will work
  as well.

More information about taps can be found inside homebrews [github wiki][2].

## Duplicate Formula

There are formula which are also present in the main homebrew
repository, to install them (or get information about them) you
need to explicitely reference the tap.

Here is an example (`mutt` is present in this tap and in homebrew main):

  - `brew install 0robustus1/rightsrestricted/mutt` installation options can be
    appended as usual
  - `brew info 0robustus1/rightsrestricted/mutt` to see the installation
    options/status of the formula

[1]: http://brew.sh/
[2]: https://github.com/Homebrew/homebrew/wiki/brew-tap
