#!/bin/sh

command -v brew >/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

command -v op >/dev/null || brew install --cask 1password/tap/1password-cli
command -v fish >/dev/null || brew install fish
command -v starship >/dev/null || brew install starship
brew install font-symbols-only-nerd-font
test -e /Applications/iTerm2.app || brew install --cask iterm2
defaults write com.googlecode.iterm2 PrefsCustomFolder -string $HOME/.local/share/chezmoi/iterm2 
