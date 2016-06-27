#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lynx
brew install tree
brew install webkit2png

# Install programming tools
brew tap homebrew/science

brew install gcc --without-multilib
brew install boost --cc=gcc-5 --build-from-source
brew install ipython
brew install pip
brew install python
brew install pyqt
brew install nano
brew install r
brew install coreutils
brew install mvn
brew install maven
brew install ant
brew install svn
brew install datamash
brew install autocompletion
brew install zsh zsh-completions
brew install ngrep

brew install homebrew/python/matplotlib --with-cairo --with-tex

# Cask stuff
# Install Cask
brew install caskroom/cask/brew-cask

brew tap caskroom/cask
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Install Casks
# brew cask install caffeine
# brew cask install virtualbox
# brew cask install vagrant

# brew cask install google-chrome
# brew cask install iterm2

# Remove outdated versions from the cellar.
brew cleanup

