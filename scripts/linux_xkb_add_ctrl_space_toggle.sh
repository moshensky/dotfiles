#!/bin/bash
#
# Script Name: add_ctrl_space_toggle.sh
#
# Description:
# This script modifies the X keyboard configuration files (`evdev.lst` and `evdev.xml`)
# to add a new keyboard layout group option: `grp:ctrl_space_toggle`.
# This option allows switching between keyboard layouts using `Ctrl+Space`.
#
# Features:
# - Idempotent: Prevents duplicate entries if the script is run multiple times.
# - Automatically updates configuration files in `/usr/share/X11/xkb/rules/`.
#
# Usage:
# - Run the script as root (requires sudo for modifying system files).
# - Example: `sudo ./add_ctrl_space_toggle.sh`
#
# Notes:
# - Back up the configuration files before running this script.
# - Restart the X server or display manager after running to apply changes.

# File paths (update these if your system uses different paths)
EVDEV_LST="/usr/share/X11/xkb/rules/evdev.lst"
EVDEV_XML="/usr/share/X11/xkb/rules/evdev.xml"

# Group description
GRP_CTRL_SPACE_TOGGLE="grp:ctrl_space_toggle"
GRP_CTRL_SPACE_TOGGLE_DESC="Toggle layout using Ctrl+Space"
LST_ENTRY="  $GRP_CTRL_SPACE_TOGGLE  $GRP_CTRL_SPACE_TOGGLE_DESC"
XML_ENTRY="
    <option>
        <name>$GRP_CTRL_SPACE_TOGGLE</name>
        <desc>$GRP_CTRL_SPACE_TOGGLE_DESC</desc>
    </option>
"

# Check and modify evdev.lst
if ! grep -q "$GRP_CTRL_SPACE_TOGGLE" "$EVDEV_LST"; then
	echo "Adding $GRP_CTRL_SPACE_TOGGLE to $EVDEV_LST..."
	# Insert after the first occurrence of a line starting with 'grp:'
	sed -i.$(date -u +"%Y-%m-%dT%H:%M:%S").bak "0,/^  grp:.*$/s//&\n$LST_ENTRY/" "$EVDEV_LST"
else
	echo "$GRP_CTRL_SPACE_TOGGLE already exists in $EVDEV_LST. Skipping."
fi

# Check and modify evdev.xml
if ! grep -q "$GRP_CTRL_SPACE_TOGGLE" "$EVDEV_XML"; then
	echo "Adding $GRP_CTRL_SPACE_TOGGLE to $EVDEV_XML..."
	# Add XML_ENTRY before the closing </layoutList> tag
	# https://unix.stackexchange.com/questions/533683/how-can-i-use-sed-to-insert-some-text-after-a-multiline-match
	#
	# :a              # begin loop
	# N               # append next line to pattern space
	# /.*option.*/!ba # if we haven't matched the end marker yet, branch back to a
	# a\              # append after loop exits
	#
	sed -i.$(date -u +"%Y-%m-%dT%H:%M:%S").bak "/.*grp:switch.*/{
	:a
	N
	/.*option.*/!ba
	a\
	foobar
	}
	" "$EVDEV_XML"
else
	echo "$GRP_CTRL_SPACE_TOGGLE already exists in $EVDEV_XML. Skipping."
fi

echo "Done. Remember to restart your X server for changes to take effect."
