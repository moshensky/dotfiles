#!/bin/bash

# Enable debugging
# set -x
set -eo pipefail

# Set scripts full path to directory
scripts_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
root_dir=$(dirname "$scripts_dir")

# Function to backup existing file or directory and create a symlink
backup_and_link() {
	local source=""
	local target=""

	# Parse options
	while [[ $# -gt 0 ]]; do
		case "$1" in
		--source)
			source="$2"
			shift 2
			;;
		--target)
			target="$2"
			shift 2
			;;
		*)
			echo "Usage: backup_and_link --source <source_path> --target <target_path>"
			return 1
			;;
		esac
	done

	local target_basename=
	target_basename=$(basename "$target")

	# Check if the target exists and create a backup
	if [ -e "$target" ] && [ ! -L "$target" ]; then
		local backup="$root_dir/backup/${target_basename}_$(date +%Y%m%d%H%M%S)"
		mv "$target" "$backup"
		echo "    Backup of '$target' created at '$backup'"
	fi

	# Force-create the symlink
	ln -sf "$source" "$target"
	rm -f "$source/$target_basename"
	echo "    Symlink created: '$target' -> '$source'"
}

# -- Link .config items

config_files=$(ls -A "$root_dir/config")

for config in $config_files; do
	echo "[INFO] Symlink config: $config"
	backup_and_link --source "$root_dir/config/$config" --target "$HOME/.config/$config"
done

# -- Link dot-home-thingies
