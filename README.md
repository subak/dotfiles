# dotfiles

## DefaultKeyBinding.dict
```
$ cd $HOME/Library/KeyBindings
$ ln -s /path/to/DefaultKeyBinding.dict

$ cd "$HOME/Library/Application Support/Textmate"
$ ln -s /path/to/DefaultKeyBinding.dict KeyBindings.dict
```

## .screenrc
```
$ echo 'export SCREENRC=/path/to/.screenrc' >> $HOME/.profile
```

## private.xml
```
$ cd "$HOME/Library/Application Support/Karabiner"
$ ln -s /path/to/private.xml
```