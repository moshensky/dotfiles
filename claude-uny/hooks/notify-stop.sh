#!/usr/bin/env bash
# Claude Code `Stop` hook: fires when Claude finishes a turn. Shows a banner;
# clicking it routes back to the tmux pane / WezTerm window where Claude ran.
#
# Test (should pop a "Turn complete" banner):
#   ~/.claude-uny/hooks/notify-stop.sh
set -uo pipefail

source "$HOME/.claude-uny/hooks/lib/notify.sh"

send_notification "Finished" "Turn complete" "Glass"
