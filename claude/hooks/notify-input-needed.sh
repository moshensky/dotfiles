#!/usr/bin/env bash
# Claude Code `Notification` hook: fires when a permission prompt or question is
# waiting on the user. Shows a banner with the actual prompt text; clicking it
# routes back to the tmux pane / WezTerm window where Claude is waiting.
# Reads the hook payload (JSON) on stdin.
#
# Test (should pop an "Input needed" banner):
#   echo '{"message":"Permission needed: Bash(rm -rf /)"}' | ~/.claude/hooks/notify-input-needed.sh
#   echo '{}' | ~/.claude/hooks/notify-input-needed.sh   # missing .message -> default text
set -uo pipefail

source "$HOME/.claude/hooks/lib/notify.sh"

message=$(jq -r '.message // "Claude needs your attention"' 2>/dev/null)
send_notification "Input needed" "$message" "Ping"
