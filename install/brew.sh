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


brew cask install \
  1password \
  chatwork \
  dropbox \
  duet \
  evernote \
  google-chrome \
  insomniax \
  intellij-idea \
  karabiner \
  kindle \
  near-lock \
  openvpn \
  seil \
  sequel-pro \
  sketch \
  skitch \
  skype \
  slack \
  sourcetree \
  osxfuse \
  ngrok \
  teamviewer \
  textmate

brew install homebrew/fuse/sshfs
