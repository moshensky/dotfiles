# ~/.bashrc: executed by bash(1) for non-login shells.

# Exit early if not interactive
case $- in
*i*) ;;
*) return ;;
esac

# Platform detection
case "$OSTYPE" in
linux*) PLATFORM=linux ;;
darwin*) PLATFORM=macos ;;
*) PLATFORM=unknown ;;
esac

# History settings
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Chroot name for Debian (Linux only)
if [ "$PLATFORM" = "linux" ]; then
    if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
        debian_chroot=$(cat /etc/debian_chroot)
    fi
fi

# Prompt
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color | *-256color) color_prompt=yes ;;
esac

if [ -n "$force_color_prompt" ]; then
    if command -v tput &>/dev/null && tput setaf 1 &>/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# Set terminal title
case "$TERM" in
xterm* | rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
esac

# Aliases and colors
if [ "$PLATFORM" = "linux" ] && [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
else
    alias ls='ls -G' # macOS uses -G for colors
fi

alias dir='ls -la'
alias vdir='ls -la'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Optional: uncomment if you want these
# alias ll='ls -l'
# alias la='ls -A'
# alias l='ls -CF'

# Load user aliases if present
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Bash completion
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    elif [ "$PLATFORM" = "macos" ]; then
        [ -f /opt/homebrew/etc/profile.d/bash_completion.sh ] && . /opt/homebrew/etc/profile.d/bash_completion.sh
    fi
fi

# Rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
if [ "$PLATFORM" = "linux" ]; then
    nvm use default >/dev/null 2>&1
elif [ "$PLATFORM" = "macos" ]; then
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
fi

# .NET
export DOTNET_ROOT="$HOME/.dotnet"
export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"

# Editor
export EDITOR=nvim
export VISUAL=nvim

# Starship prompt
if command -v starship &>/dev/null; then
    eval "$(starship init bash)"
fi

# Pip isolation (require venv for installs)
export PIP_REQUIRE_VIRTUALENV=true

# SDKMAN (must be near end for hooks)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Python tools (e.g. uv)
export PATH="$HOME/.local/bin:$PATH"
