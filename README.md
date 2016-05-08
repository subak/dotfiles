# dotfiles

### DefaultKeyBinding.dict
```
$ mkdir -pv ${HOME}/Library/KeyBindings
$ ln -s /path/to/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
$ ln -s /path/to/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"
```

### .screenrc
```
$ echo 'export SCREENRC=/path/to/.screenrc' >> $HOME/.profile
```

### Karabiner
```
$ mkdir -pv ${HOME}/Library/Application\ Support/Karabiner
$ ln -s /path/to/private.xml "${HOME}/Library/Application Support/Karabiner/"
```

### idea
```
$ mkdir -pv ${HOME}/Library/Preferences/IntelliJIdea15
$ ln -s /path/to/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
$ ln -s /path/to/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
$ ln -s /path/to/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
```
