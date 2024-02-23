#!/bin/bash

# Install all brew packages
brew bundle

ln -s ~/dotfiles/ide.sh ~/.config/ide.sh
ln -s ~/dotfiles/.config/nvim ~/.config
ln -s ~/dotfiles/.config/tmux ~/.config
ln -s ~/dotfiles/.config/alacritty ~/.config

# Install Starship
sh -C "$(curl -sS https://starship.rs/install.sh)" -y -f
eval "$(starship init zsh)"

# nvm 마지막 lts 버전을 설치합니다.
nvm install --lts

# 초기 gitconfig 파일을 지정합니다.
# TODO: 추후에 설치형태로 이름, 이메일을 입력하게 하여 추가설정하게 하기
cp ~/dotfiles/.gitconfig ~/.gitconfig

# ohmyzsh를 설치합니다.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#  zshrc파일에
cat ~/dotfiles/.zshrc >>~/.zshrc
source ~/.zshrc # 적용
