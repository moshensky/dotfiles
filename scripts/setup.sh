#!/bin/bash

echo "[setup] INFO: Setup started"

# set -x
set -eo pipefail

# Set scripts full path to directory
scripts_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

echo "[setup] INFO: setup.sh dir: $scripts_dir"

# -- Instal Packages

# TODO: impl MacOS
# if [[ "$(uname)" == "Darwin" ]]; then
# 	~/dotfiles/scripts/macos.sh
# fi
#
# TODO: impl Debian

source "$scripts_dir/symlink.sh"


echo "[setup] INFO: Setup finished"
