#!/bin/bash

echo "[setup] INFO: Setup started"

# set -x
set -eo pipefail

# Set scripts full path to directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

echo "[setup] INFO: setup.sh dir: $DIR"

# # Include utils script
# utils_script="$DIR/../../ops/scripts/utils.sh"
# if [ -f $utils_script ]; then
#   source $utils_script
# else
#   echo "$utils_script doesn't exist! You must provide proper path to utils script."
#   exit 1
# fi


# -- Instal Packages

# TODO: impl MacOS
# if [[ "$(uname)" == "Darwin" ]]; then
# 	~/dotfiles/scripts/macos.sh
# fi
#
# TODO: impl Debian

# ~/dotfiles/symlink.sh


echo "[setup] INFO: Setup finished"
