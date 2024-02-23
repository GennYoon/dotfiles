#!/bin/bash

CONFIG="~/.config"

# Install all brew packages
brew bundle

# 폴더가 존재하지 않으면 생성합니다.
if [ ! -d "$CONFIG" ]; then
	mkdir -p $CONFIG
fi

ln -s ~/dotfiles/ide.sh ~/.config/ide.sh
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
ln -s ~/dotfiles/.config/tmux ~/.config/tmux
ln -s ~/dotfiles/.config/kitty ~/.config/kitty
ln -s ~/dotfiles/.config/neofetch ~/.config/neofetch

# Starship을 설치합니다.
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
