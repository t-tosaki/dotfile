#!/bin/zsh

cd "$(dirname "$0")"

# setup starship
echo "\n\033[1;33m==>\033[0m install starship"
curl -sS https://starship.rs/install.sh | sh

# setup homebrew
echo "\n\033[1;33m==>\033[0m install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# install from homebrew
echo "\n\033[1;33m==>\033[0m install homebrew bundle"
brew bundle

# copy dotfiles
echo "\n\033[1;33m==>\033[0m copy dotfiles"
cp .gitconfig ~/
cp .zshrc ~/
cp -r .config ~/

# source dotfiles
echo "\n\033[1;33m==>\033[0m source dotfiles"
