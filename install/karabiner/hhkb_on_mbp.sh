#!/usr/bin/env bash

karabiner=/Applications/Karabiner.app/Contents/Library/bin/karabiner
$karabiner append "HHKB on MBP"
$karabiner select_by_name "HHKB on MBP"
${HOME}/Repos/dotfiles/install/karabiner/export/hhkb_on_mbp.sh
