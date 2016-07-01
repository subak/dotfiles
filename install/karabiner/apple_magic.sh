#!/usr/bin/env bash

karabiner=/Applications/Karabiner.app/Contents/Library/bin/karabiner
$karabiner append "Apple Magic"
$karabiner select_by_name "Apple Magic"
${HOME}/Repos/dotfiles/install/karabiner/export/apple_magic.sh
