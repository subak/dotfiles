# KeyBindings
mkdir -pv ${HOME}/Library/KeyBindings
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
mkdir -pv "${HOME}/Library/Application Support/Textmate"
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"


# IntteliJIDEA
IDEA_VERSION=2017.2
mkdir -pv ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}
ln -s ${HOME}/Repos/dotfiles/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/


# Textmate QuickLook Plugin
cp -a /Applications/TextMate.app/Contents/Library/QuickLook ${HOME}/Library/


# eikana
ln -s ${HOME}/Repos/dotfiles/io.github.imasanari.cmd-eikana.plist ${HOME}/Library/Preferences/io.github.imasanari.cmd-eikana.plist


# Git
git config --global user.email info@subak.jp
git config --global core.editor nano

