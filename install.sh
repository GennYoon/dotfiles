#!/bin/bash

# Install all brew packages
brew bundle

ln -s ~/dotfiles/ide.sh ~/.config/ide.sh
ln -s ~/dotfiles/.config/nvim ~/.config
ln -s ~/dotfiles/.config/tmux ~/.config
ln -s ~/dotfiles/.config/alacritty ~/.config

cp ~/dotfiles/.gitconfig ~/.gitconfig
cat ~/dotfiles/.zshrc >>~/.zshrc
