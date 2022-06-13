#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

command -v fish >/dev/null || brew install fish
command -v asdf >/dev/null || brew install asdf
command -v starship >/dev/null || brew install starship
asdf plugin list | grep -q direnv || asdf plugin-add direnv
