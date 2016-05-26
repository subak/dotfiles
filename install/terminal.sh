#!/usr/bin/env bash

TERM_PROFILE='Solarized_Dark';
open "${HOME}/Repos/dotfiles/install/${TERM_PROFILE}.terminal"
defaults write com.apple.Terminal "Default Window Settings" -string "${TERM_PROFILE}"
defaults write com.apple.Terminal "Startup Window Settings" -string "${TERM_PROFILE}"

defaults import com.apple.Terminal "${HOME}/Library/Preferences/com.apple.Terminal.plist"
