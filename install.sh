#!/usr/bin/env bash

set -eu

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install \
  caskroom/cask/brew-cask \
  bash-completion \
  homebrew/dupes/screen \
  stunnel


# unison
brew install \
  unison \
  python3
pip3 install macfsevents


brew cask install \
  google-chrome \
  karabiner \
  seil \
  skitch \
  textmate \
  near-lock \
  sshfs \
  sequel-pro \
  teamviewer \
  dockertoolbox \
  duet \
  intellij-idea \
  evernote \
  dropbox \
  1password \
  chatwork \
  skype \
  slack \
  sketch


# KeyBindings
mkdir -pv ${HOME}/Library/KeyBindings
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"


# Karabiner
mkdir -pv ${HOME}/Library/Application\ Support/Karabiner
ln -s ${HOME}/Repos/dotfiles/private.xml "${HOME}/Library/Application Support/Karabiner/"


# IntteliJIDEA
IDEA_VERSION=15
mkdir -pv ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}
ln -s ${HOME}/Repos/dotfiles/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/


# Textmate QuickLook Plugin
cp -a ${HOME}/Applications/TextMate.app/Contents/Library/QuickLook ${HOME}/Library/


# Git
git config --global user.email info@subak.jp
git config --global core.editor nano
