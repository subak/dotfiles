# KeyBindings
mkdir -pv ${HOME}/Library/KeyBindings
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
mkdir -pv "${HOME}/Library/Application Support/Textmate"
ln -s ${HOME}/Repos/dotfiles/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"


# Karabiner
mkdir -pv ${HOME}/Library/Application\ Support/Karabiner
ln -s ${HOME}/Repos/dotfiles/private.xml "${HOME}/Library/Application Support/Karabiner/"


# IntteliJIDEA
IDEA_VERSION=2016.2
mkdir -pv ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}
ln -s ${HOME}/Repos/dotfiles/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/
ln -s ${HOME}/Repos/dotfiles/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${IDEA_VERSION}/


# Textmate QuickLook Plugin
cp -a /Applications/TextMate.app/Contents/Library/QuickLook ${HOME}/Library/


# Git
git config --global user.email info@subak.jp
git config --global core.editor nano

