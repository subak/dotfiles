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


brew install docker-compose docker-machine

brew install openvpn

brew cask install \
  1password \
  chatwork \
  cmd-eikana \
  dropbox \
  evernote \
  google-chrome \
  insomniax \
  intellij-idea \
  kindle \
  sequel-pro \
  sketch \
  skitch \
  skype \
  slack \
  osxfuse \
  ngrok \
  teamviewer \
  textmate

brew install homebrew/fuse/sshfs
