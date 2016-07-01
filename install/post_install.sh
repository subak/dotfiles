#!/usr/bin/env bash

# sshkeyの設定後
cd ${HOME}/Repos
git clone git@bitbucket.org:subak/13.rmbp.git
ln -s ${HOME}/Repos/13.rmbp/.profile ${HOME}/.profile

git clone git@bitbucket.org:subak/ca.git ${HOME}/Repos/CA


cd ${HOME}/Library
git clone https://github.com/yascentur/RictyDiminished Fonts

# Karabiner 起動後に
${HOME}/Repos/dotfiles/install/karabiner/apple_magic.sh
${HOME}/Repos/dotfiles/install/karabiner/hhkb_on_mbp.sh

# Seil起動後に
${HOME}/Repos/dotfiles/install/seil.sh

