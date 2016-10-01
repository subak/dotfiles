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


brew cask install \
  1password \
  chatwork \
  dockertoolbox \
  dropbox \
  duet \
  evernote \
  google-chrome \
  intellij-idea \
  karabiner \
  kindle \
  near-lock \
  seil \
  sequel-pro \
  sketch \
  skitch \
  skype \
  slack \
  sourcetree \
  sshfs \
  teamviewer \
  textmate


# KeyBindings
mkdir -pv ${HOME}/Library/KeyBindings
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
mkdir -pv "${HOME}/Library/Application Support/Textmate"
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"


# Karabiner
mkdir -pv ${HOME}/Library/Application\ Support/Karabiner
ln -s ${HOME}/Repos/dotfiles/private.xml "${HOME}/Library/Application Support/Karabiner/"


# IntteliJIDEA
IDEA_VERSION=2016.2
mkdir -pv ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}
ln -s ${HOME}/Repos/dotfiles/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/


# Textmate QuickLook Plugin
cp -a /Applications/TextMate.app/Contents/Library/QuickLook ${HOME}/Library/


# Git
git config --global user.email info@subak.jp
git config --global core.editor nano
