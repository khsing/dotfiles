#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install curl
brew install grep
brew install tmux
brew install gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install john-jumbo
brew install nmap
brew install pngcheck
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace

# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install ssh-copy-id
brew install tree

# Install web developer tools

brew install php
brew install composer
brew install mysql
brew install dnsmasq
brew install nginx
brew install jq

# Install Caskroom and tools
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

# xquartz, some tools required
brew cask install xquartz
# 1Password
brew cask install 1password
# Alfred
brew cask install alfred
# Android command line tools, e.g fastboot, adb
brew cask install android-platform-tools
# tool to uninstall application
brew cask install appcleaner
# great text editor
brew cask install bbedit
# ebook management
brew cask install calibre
# colorpicker
brew cask install colorpicker-skalacolor
# ftp webdav client
brew cask install cyberduck
brew cask install drawio
brew cask install firefox
brew cask install font-b612
brew cask install font-inconsolata
brew cask install google-chrome
# Best video player ever
brew cask install iina
# http api client
brew cask install insomnia
brew cask install iterm2
brew cask install kindle
brew cask install notion
brew cask install omnidisksweeper
brew cask install sip
brew cask install slack
brew cask install rectangle
brew cask install viscosity
brew cask install font-hack-nerd-font

# install tools require xquartz
brew install pdf2image # require xquartz

# Remove outdated versions from the cellar.
brew cleanup -s
