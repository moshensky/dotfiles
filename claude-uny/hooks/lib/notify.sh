#!/usr/bin/env bash
# Shared notification helper for Claude Code hooks.
#
#   send_notification <subtitle> <message> <sound>
#
# Uses terminal-notifier so clicking the banner routes back to the tmux pane
# Claude is running in (captured here as $TMUX_PANE). Falls back to a plain,
# non-clickable banner otherwise: osascript on macOS, notify-send on Linux.
#
# Test (source it, then call the function directly):
#   source ~/.claude-uny/hooks/lib/notify.sh
#   send_notification "Input needed" "hello from notify.sh" "Ping"
#   TMUX_PANE="$(tmux display -p '#{pane_id}')" send_notification "Finished" "clickable test" "Glass"

FOCUS_SCRIPT="$HOME/.claude-uny/hooks/focus-tmux-pane.sh"
NOTIFY_TITLE="Claude Code [uny]"
WEZTERM_BUNDLE_ID="com.github.wez.wezterm"

send_notification() {
  local subtitle="$1" message="$2" sound="$3"
  local pane="${TMUX_PANE:-}"

  if command -v terminal-notifier >/dev/null 2>&1; then
    local -a args=(
      -title "$NOTIFY_TITLE"
      -subtitle "$subtitle"
      -message "$message"
      -sound "$sound"
      -group "claude-code"        # collapse repeats into one banner
    )
    if [ -n "$pane" ]; then
      # Click → jump to the exact tmux pane / WezTerm window. Capture the tmux
      # socket now ($TMUX is "socket,pid,session"); the click runs outside tmux.
      local tmux_sock="${TMUX%%,*}"
      args+=(-execute "$FOCUS_SCRIPT $pane $tmux_sock")
    else
      # Not in tmux: at least bring WezTerm forward on click.
      args+=(-activate "$WEZTERM_BUNDLE_ID")
    fi
    terminal-notifier "${args[@]}" >/dev/null 2>&1 || true
  elif command -v osascript >/dev/null 2>&1; then
    # macOS fallback: plain banner, no click routing. All text passed as argv to
    # avoid AppleScript-injection issues with quotes in the message.
    osascript \
      -e 'on run {m, t, s, snd}' \
      -e 'display notification m with title t subtitle s sound name snd' \
      -e 'end run' \
      "$message" "$NOTIFY_TITLE" "$subtitle" "$sound" >/dev/null 2>&1 || true
  elif command -v notify-send >/dev/null 2>&1; then
    # Linux fallback: notify-send has no subtitle/sound, so fold the subtitle
    # into the summary and drop the sound.
    notify-send -a "$NOTIFY_TITLE" "$NOTIFY_TITLE — $subtitle" "$message" \
      >/dev/null 2>&1 || true
  fi
}
