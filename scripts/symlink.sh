#!/bin/bash

# Enable debugging
# set -x
set -eo pipefail

# Set scripts full path to directory
scripts_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
dotfiles_dir=$(dirname "$scripts_dir")

# -- Link .config items

cd $dotfiles_dir/config
config_files=$(ls -A)

for file in $config_files; do
	if [ -d "$file" ]; then
		rm -rf "${HOME:?}/.config/$file"
	fi

	ln -sf "$dotfiles_dir/config/$file" "$HOME/.config/$file"
done
