#!/usr/bin/env bash

# http://rcmdnk.github.io/blog/2015/03/22/computer-mac/
# http://qiita.com/djmonta/items/17531dde1e82d9786816

# Automatically hide or show the Dock （Dock を自動的に隠す）
defaults write com.apple.dock autohide -bool true

# Magnificate the Dock （Dock の拡大機能を入にする）
defaults write com.apple.dock magnification -bool true

########
# キーボード

# Fuキーを標準のファンクションキーとして使用
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true

# フルキーボードアクセスを有効
defaults write NSGlobalDomain AppleKeyboardUIMode -int 2

# キーのリピート
defaults write NSGlobalDomain KeyRepeat -int 2

# リピート入力認識までの時間
defaults write NSGlobalDomain InitialKeyRepeat -int 15


########
# Finder

# 拡張子を常に表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# デフォルトはカラムビュー表示
defaults write com.apple.finder FXPreferredViewStyle clmv

# Quick Look上でテキストの選択を可能に
defaults write com.apple.finder QLEnableTextSelection -bool true
