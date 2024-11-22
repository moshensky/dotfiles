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
LST_ENTRY="  grp:ctrl_space_toggle  Toggle layout using Ctrl+Space"
XML_ENTRY="
    <option>
        <name>grp:ctrl_space_toggle</name>
        <desc>Toggle layout using Ctrl+Space</desc>
    </option>
"

# Check and modify evdev.lst
if ! grep -q "grp:ctrl_space_toggle" "$EVDEV_LST"; then
	echo "Adding grp:ctrl_space_toggle to $EVDEV_LST..."
	echo "$LST_ENTRY" >>"$EVDEV_LST"
else
	echo "grp:ctrl_space_toggle already exists in $EVDEV_LST. Skipping."
fi

# Check and modify evdev.xml
if ! grep -q "<name>grp:ctrl_space_toggle</name>" "$EVDEV_XML"; then
	echo "Adding grp:ctrl_space_toggle to $EVDEV_XML..."
	# Add XML_ENTRY before the closing </layoutList> tag
	sed -i "/<\/layoutList>/i $XML_ENTRY" "$EVDEV_XML"
else
	echo "grp:ctrl_space_toggle already exists in $EVDEV_XML. Skipping."
fi

echo "Done. Remember to restart your X server for changes to take effect."
