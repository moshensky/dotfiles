#!/bin/bash

# Enable debugging
# set -x
set -eo pipefail

# Set scripts full path to directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

# -- Link .config items

cd $DIR/../config
config_files=$(ls -A)

for file in $config_files; do
	if [ -d "$file" ]; then
		rm -rf "${HOME:?}/.config/$file"
	fi

	ln -sf "$DIR/../config/$file" "$HOME/.config/$file"
done
