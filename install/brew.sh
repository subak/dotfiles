#!/usr/bin/env bash

set -eu

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  bash-completion \
  homebrew/dupes/screen \
  stunnel \
  mobile-shell


# unison
brew install \
  unison \
  python3
pip3 install macfsevents


# screen exchange
brew install node
npm install -g ws


brew install openvpn

brew cask install \
  1password \
  charles \
  chatwork \
  cmd-eikana \
  docker \
  dropbox \
  evernote \
  expandrive \
  google-chrome \
  insomniax \
  intellij-idea \
  kindle \
  sequel-pro \
  sketch \
  skitch \
  skype \
  slack \
  ngrok \
  teamviewer \
  textmate \
  xld
