#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set option.emacsmode_controlH 1
/bin/echo -n .
$cli set repeat.wait 33
/bin/echo -n .
$cli set repeat.initial_wait 250
/bin/echo -n .
$cli set option.emacsmode_controlM 1
/bin/echo -n .
$cli set remap.jis_command2eisuukana_prefer_command 1
/bin/echo -n .
$cli set option.emacsmode_controlPNBF_nomodifiers 1
/bin/echo -n .
$cli set remap.mouse_keys_mode_subak 1
/bin/echo -n .
/bin/echo
