#!/usr/bin/env bash

set -eu

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  bash-completion \
  mobile-shell \
  openvpn \
  screen \
  stunnel

# unison
brew install \
  unison \
  python3
pip3 install macfsevents

# screen exchange
brew install node
npm install -g ws

brew cask install \
  1password \
  charles \
  chatwork \
  docker \
  dropbox \
  evernote \
  google-chrome \
  insomniax \
  intellij-idea \
  karabiner-elements \
  kindle \
  sequel-pro \
  sketch \
  skitch \
  skype \
  slack \
  teamviewer \
  textmate \
  xld
