#!/bin/sh

cli=/Applications/Seil.app/Contents/Library/bin/seil

$cli set enable_capslock 1
/bin/echo -n .
$cli set keycode_capslock 110
/bin/echo -n .
