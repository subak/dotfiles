import sys
import os
import datetime

import pyauto
from keyhac import *


def configure(keymap):

    keymap.replaceKey("RAlt","LAlt")
    keymap.defineModifier("Enter", "User0");

    keymap_global = keymap.defineWindowKeymap()

    keymap_global["O-Enter"] = "Enter"

    keymap_global["RC-P"] = "Up"
    keymap_global["RC-N"] = "Down"
    keymap_global["RC-F"] = "Right"
    keymap_global["RC-B"] = "Left"
    keymap_global["S-RC-P"] = "S-Up"
    keymap_global["S-RC-N"] = "S-Down"
    keymap_global["S-RC-F"] = "S-Right"
    keymap_global["S-RC-B"] = "S-Left"
    keymap_global["RC-OpenBracket"] = "Esc"
    keymap_global["RC-H"] = "Back"
    keymap_global["RC-D"] = "Delete"
    keymap_global["RC-M"] = "Enter"

    keymap_global["U0-H"] = keymap.MouseMoveCommand(-12,0);
    keymap_global["U0-L"] = keymap.MouseMoveCommand(12,0);
    keymap_global["U0-K"] = keymap.MouseMoveCommand(0,-12)
    keymap_global["U0-J"] = keymap.MouseMoveCommand(0,12)

    # speed up
    keymap_global["C-U0-H"] = keymap.MouseMoveCommand(-36,0);
    keymap_global["C-U0-L"] = keymap.MouseMoveCommand(36,0);
    keymap_global["C-U0-K"] = keymap.MouseMoveCommand(0,-36)
    keymap_global["C-U0-J"] = keymap.MouseMoveCommand(0,36)

    # mouse button
    keymap_global["D-U0-Space"] = keymap.MouseButtonDownCommand('left')
    keymap_global["U-U0-Space"] = keymap.MouseButtonUpCommand('left')
    keymap_global["D-C-U0-Space"] = keymap.MouseButtonDownCommand('left')
    keymap_global["U-C-U0-Space"] = keymap.MouseButtonUpCommand('left')
    keymap_global["D-U0-N"] = keymap.MouseButtonDownCommand('left')
    keymap_global["U-U0-N"] = keymap.MouseButtonUpCommand('left')
    keymap_global["D-U0-M"] = keymap.MouseButtonDownCommand('right')
    keymap_global["U-U0-M"] = keymap.MouseButtonUpCommand('right')

    # mouse scroll
    keymap_global["S-U0-H"] = keymap.MouseHorizontalWheelCommand(-2.0)
    keymap_global["S-U0-L"] = keymap.MouseHorizontalWheelCommand(2.0)
    keymap_global["S-U0-K"] = keymap.MouseWheelCommand(2.0)
    keymap_global["S-U0-J"] = keymap.MouseWheelCommand(-2.0)

    keymap_global["C-Space"] = "C-Space"
    keymap_global["Win-S-CloseBracket"] = "C-Tab"
    keymap_global["Win-S-OpenBracket"] = "C-S-Tab"
    keymap_global["Win-Tab"] = "A-Tab"

    # copy and paste
    keymap_global["Win-C"] = "C-C"
    keymap_global["Win-X"] = "C-X"
    keymap_global["Win-V"] = "C-V"
    keymap_global["Win-Z"] = "C-Z"
    keymap_global["Win-A"] = "C-A"

    # for chrome
    keymap_global["Win-T"] = "C-T"
    keymap_global["Win-W"] = "C-W"
    keymap_global["Win-L"] = "C-L"
    keymap_global["Win-F"] = "C-F"
    keymap_global["Win-G"] = "C-G"

    # control
    keymap_global["U0-Z"] = "C-Z"
    keymap_global["U0-T"] = "C-T"
    keymap_global["U0-X"] = "A-X" # for inttelij

    def isConsole(wnd):
        if wnd.getProcessName() in ("MobaXterm.exe"):
            return True
        return False

    def isNotConsole(wnd):
        return not isConsole(wnd)

    keymap_win32 = keymap.defineWindowKeymap( check_func=isNotConsole )
    keymap_win32["RC-A"] = "Home"
    keymap_win32["RC-E"] = "End"
    keymap_win32["S-C-A"] = "S-Home"
    keymap_win32["S-C-E"] = "S-End"
    keymap_win32["RC-K"] = "S-End","C-X"
    keymap_win32["RC-Y"] = "C-V"
    keymap_win32["A-W"] = "C-C"
    keymap_win32["RC-W"] = "C-X"
    keymap_win32["A-F"] = "C-Right"
    keymap_win32["A-B"] = "C-Left"
    keymap_win32["S-A-F"] = "S-C-Right"
    keymap_win32["S-A-B"] = "S-C-Left"
    keymap_win32["RC-V"] = "PageDown"
    keymap_win32["A-V"] = "PageUp"
    keymap_win32["RC-Minus"] = "C-Z"
    keymap_win32["RC-X"] = "LA-X"


    # --------------------------------------------------------------------

    # Customize Notepad as Emacs-ish
    # Because the keymap condition of keymap_edit overlaps with keymap_notepad,
    # both these two keymaps are applied in mixed manner.
    if 0:
        keymap_notepad = keymap.defineWindowKeymap( exe_name="notepad.exe", class_name="Edit" )

        # Define Ctrl-X as the first key of multi-stroke keys
        keymap_notepad[ "C-X" ] = keymap.defineMultiStrokeKeymap("C-X")

        keymap_notepad[ "C-P" ] = "Up"                  # Move cursor up
        keymap_notepad[ "C-N" ] = "Down"                # Move cursor down
        keymap_notepad[ "C-F" ] = "Right"               # Move cursor right
        keymap_notepad[ "C-B" ] = "Left"                # Move cursor left
        keymap_notepad[ "C-A" ] = "Home"                # Move to beginning of line
        keymap_notepad[ "C-E" ] = "End"                 # Move to end of line
        keymap_notepad[ "A-F" ] = "C-Right"             # Word right
        keymap_notepad[ "A-B" ] = "C-Left"              # Word left

        keymap_notepad[ "C-V" ] = "PageDown"            # Page down
        keymap_notepad[ "A-V" ] = "PageUp"              # page up
        keymap_notepad[ "A-Comma" ] = "C-Home"          # Beginning of the document
        keymap_notepad[ "A-Period" ] = "C-End"          # End of the document
        keymap_notepad[ "C-X" ][ "C-F" ] = "C-O"        # Open file
        keymap_notepad[ "C-X" ][ "C-S" ] = "C-S"        # Save
        keymap_notepad[ "C-X" ][ "C-W" ] = "A-F","A-A"  # Save as
        keymap_notepad[ "C-X" ][ "U" ] = "C-Z"          # Undo
        keymap_notepad[ "C-S" ] = "C-F"                 # Search
        keymap_notepad[ "A-X" ] = "C-G"                 # Jump to specified line number
        keymap_notepad[ "C-X" ][ "H" ] = "C-A"          # Select all
        keymap_notepad[ "C-W" ] = "C-X"                 # Cut
        keymap_notepad[ "A-W" ] = "C-C"                 # Copy
        keymap_notepad[ "C-Y" ] = "C-V"                 # Paste
        keymap_notepad[ "C-X" ][ "C-C" ] = "A-F4"       # Exit
