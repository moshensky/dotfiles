#!/usr/bin/env bash
# Route the user to a specific tmux pane. Invoked on notification click with:
#   $1  target pane id (e.g. "%148")   — captured as $TMUX_PANE when the hook fired
#   $2  tmux socket path (optional)     — captured from $TMUX when the hook fired
#
# Steps:
#   1. select the pane's window + the pane itself inside tmux
#   2. move the tmux client onto that session if it's viewing another
#   3. raise the WezTerm window/pane hosting that tmux client to the foreground
#
# Best-effort throughout: any missing pane / detached session / absent tool is a
# no-op, never an error.
#
# Test (run from INSIDE tmux; switch to another window first, then this should
# jump you back to the current pane and raise WezTerm):
#   ~/.claude-uny/hooks/focus-tmux-pane.sh "$(tmux display -p '#{pane_id}')" "${TMUX%%,*}"

# terminal-notifier runs this on click in its own process with a minimal PATH,
# so tmux/jq/wezterm (in /opt/homebrew/bin) won't resolve unless we add it.
export PATH="/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

pane="${1:-}"
socket="${2:-}"
[ -z "$pane" ] && exit 0

# Target the exact tmux server via its socket — at click time we're outside
# tmux, so it can't infer the socket from $TMUX/$TMPDIR reliably.
tm() { if [ -n "$socket" ]; then tmux -S "$socket" "$@"; else tmux "$@"; fi; }

# The tmux session that owns the target pane. If it's gone, nothing to do.
sess=$(tm display-message -pt "$pane" '#{session_name}' 2>/dev/null) || exit 0
[ -z "$sess" ] && exit 0

# Find a client already attached to that session; otherwise take the
# most-recently-active client and move it onto the session.
client_tty=$(tm list-clients -F '#{client_session} #{client_tty}' 2>/dev/null \
  | awk -v s="$sess" '$1==s {print $2; exit}')
if [ -z "$client_tty" ]; then
  client_tty=$(tm list-clients -F '#{client_activity} #{client_tty}' 2>/dev/null \
    | sort -rn | awk 'NR==1 {print $2}')
  [ -n "$client_tty" ] && tm switch-client -c "$client_tty" -t "$sess" 2>/dev/null
fi

# Focus the window + pane within tmux.
win=$(tm display-message -pt "$pane" '#{session_name}:#{window_index}' 2>/dev/null)
[ -n "$win" ] && tm select-window -t "$win" 2>/dev/null
tm select-pane -t "$pane" 2>/dev/null

# Raise the WezTerm window/pane hosting that tmux client. The WEZTERM_UNIX_SOCKET
# env var is frequently stale (points at a dead gui socket), so resolve the live
# one from the running wezterm-gui pid, falling back to the newest gui socket.
if [ -n "$client_tty" ] && command -v wezterm >/dev/null 2>&1; then
  gui_pid=$(pgrep -f 'WezTerm.app/Contents/MacOS/wezterm-gui' 2>/dev/null | head -1)
  sock="$HOME/.local/share/wezterm/gui-sock-${gui_pid}"
  [ -S "$sock" ] || sock=$(ls -t "$HOME/.local/share/wezterm"/gui-sock-* 2>/dev/null | head -1)
  [ -n "${sock:-}" ] && export WEZTERM_UNIX_SOCKET="$sock"

  wz_pane=$(wezterm cli list --format json 2>/dev/null \
    | jq -r --arg tty "$client_tty" '.[] | select(.tty_name==$tty) | .pane_id' \
    | head -1)
  [ -n "$wz_pane" ] && wezterm cli activate-pane --pane-id "$wz_pane" 2>/dev/null
fi

# Make sure WezTerm itself is frontmost.
open -a WezTerm 2>/dev/null || true
