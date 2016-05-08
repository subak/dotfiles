#!/usr/bin/env bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

install_brew_packages.sh
install_brew_cask_packages.sh

gem install pry
gem install asciidoctor coderay rouge pygments.rb
gem install asciidoctor-pdf --pre

git config --global user.email info@subak.jp
git config --global core.editor nano
