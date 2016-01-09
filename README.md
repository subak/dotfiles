# dotfiles

### DefaultKeyBinding.dict
```
$ ln -s /path/to/DefaultKeyBinding.dict ${HOME}/Library/KeyBindings/
$ ln -s /path/to/DefaultKeyBinding.dict "${HOME}/Library/Application Support/Textmate/KeyBindings.dict"
```

### .screenrc
```
$ echo 'export SCREENRC=/path/to/.screenrc' >> $HOME/.profile
```

### private.xml
```
$ ln -s /path/to/private.xml "${HOME}/Library/Application Support/Karabiner/"
```

### idea
```
$ ln -s /path/to/idea/codestyles ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
$ ln -s /path/to/idea/colors ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
$ ln -s /path/to/idea/keymaps ${HOME}/Library/Preferences/IntelliJIdea${VERSION}/
```