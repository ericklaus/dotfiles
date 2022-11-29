#!/bin/sh

command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

command -v op >/dev/null || brew install --cask 1password/tap/1password-cli
command -v fish >/dev/null || brew install fish
command -v asdf >/dev/null || brew install asdf
command -v starship >/dev/null || brew install starship
if ! asdf plugin list | grep -q direnv; then
	asdf plugin-add direnv
	asdf install direnv latest
	asdf global direnv latest
fi

