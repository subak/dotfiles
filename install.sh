#!/usr/bin/env bash

set -eux

dir=${HOME}/Repos/dotfiles/install

${dir}/fix_dotfiles_git_remote_origin.sh
${dir}/brew.sh
${dir}/settings.sh
${dir}/ssh_for_local.sh
${dir}/post_install.sh
${dir}/defaults.sh
${dir}/terminal.sh
