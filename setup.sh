#!/bin/sh

cd "$(dirname "$0")"

# setup starship
curl -sS https://starship.rs/install.sh | sh

# setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install from homebrew
brew bundle

# copy dotfiles
cp .gitconfig ~/
cp .zshrc ~/
cp -r .config ~/
