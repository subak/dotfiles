#!/usr/bin/env bash

# sshkeyの設定後
cd ${HOME}/Repos
git clone git@bitbucket.org:subak/13.rmbp.git
ln -s ${HOME}/Repos/13.rmbp/.profile ${HOME}/.profile

cd ${HOME}/Library
git clone https://github.com/subak/RictyDiminished Fonts
