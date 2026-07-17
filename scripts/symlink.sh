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
        # shellcheck disable=SC2155
        local backup="$root_dir/backup/${target_basename}_$(date +%Y%m%d%H%M%S)"
        mv "$target" "$backup"
        echo "    Backup of '$target' created at '$backup'"
    fi

    # Force-create the symlink
    ln -sf "$source" "$target"
    # Prevent recursion
    if [[ -d "$source" && "$source/$target_basename" == "$target" ]]; then
        rm -f "$source/$target_basename"
    fi
    echo "    Symlink created: '$target' -> '$source'"
}

# -- Link .config items

config_files=$(ls -A "$root_dir/config")

for config in $config_files; do
    echo "[INFO] Symlink config: $config"
    backup_and_link --source "$root_dir/config/$config" --target "$HOME/.config/$config"
done

# -- Link dot-home-thingies
#
dot_home_files=$(ls -A "$root_dir/dot-home-thingies")

for config in $dot_home_files; do
    echo "[INFO] Symlink config: $config"
    backup_and_link --source "$root_dir/dot-home-thingies/$config" --target "$HOME/$config"
done

# -- Link individual Claude Code config items
#
# ~/.claude is a live directory full of machine-local state (caches, session
# transcripts, history), so only the portable config items are symlinked in
# rather than the whole directory.

mkdir -p "$HOME/.claude"

for item in settings.json agents hooks; do
    echo "[INFO] Symlink claude: $item"
    backup_and_link --source "$root_dir/claude/$item" --target "$HOME/.claude/$item"
done

# -- Link the parallel ~/.claude-uny profile
#
# A separate profile with its own hooks source (claude-uny/), independent of
# claude/ so the two can diverge. Only hooks are managed here; ~/.claude-uny's
# own settings.json and agents are left as machine-local state.

mkdir -p "$HOME/.claude-uny"

for item in hooks; do
    echo "[INFO] Symlink claude-uny: $item"
    backup_and_link --source "$root_dir/claude-uny/$item" --target "$HOME/.claude-uny/$item"
done
