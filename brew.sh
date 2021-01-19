#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Disable auto update while install
HOMEBREW_NO_AUTO_UPDATE=true

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
brew install binutils
brew install dex2jar
brew install dns2tcp
brew install nmap
brew install pngcheck
brew install sqlmap

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
brew install --cask xquartz
# 1Password
brew install --cask 1password
# Alfred
brew install --cask alfred
# Android command line tools, e.g fastboot, adb
brew install --cask android-platform-tools
# tool to uninstall application
brew install --cask appcleaner
# great text editor
brew install --cask bbedit
# ebook management
brew install --cask calibre
# colorpicker
brew install --cask colorpicker-skalacolor
# ftp webdav client
brew install --cask firefox
brew install --cask font-inconsolata font-cascadia-mono font-cascadia
brew install --cask google-chrome
# http api client
brew install --cask insomnia
brew install --cask iterm2
brew install --cask notion
brew install --cask omnidisksweeper
brew install --cask sip
brew install --cask rectangle
brew install --cask viscosity
brew install --cask font-hack-nerd-font
brew install --cask itsycal

# install tools require xquartz
brew install pdf2image # require xquartz

# Remove outdated versions from the cellar.
brew cleanup -s
