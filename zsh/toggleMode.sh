#!/bin/zsh

ZSHRC="$HOME/.zshrc"

if grep -q 'DARK_MODE' $ZSHRC; then
	sed -i '' 's/DARK_MODE/LIGHT_MODE/g' "$(realpath "$HOME/.zshrc")"
	source $ZSHRC
else
	sed -i '' 's/LIGHT_MODE/DARK_MODE/g' "$(realpath "$HOME/.zshrc")"
	source $ZSHRC
fi
