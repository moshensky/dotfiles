eval "$(/opt/homebrew/bin/brew shellenv)"

# Source .bashrc if it exists
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
