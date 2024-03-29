alias ll="eza -l -g --icons"
alias lla="ll -a"
alias vi="nvim"
alias vim="nvim"
alias ide="sh ~/.config/ide.sh"
alias tf="terraform"

# Python
alias pip="pip3"
alias python="python3"

# Tmux
alias tl="tmux ls"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

# configuration
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.config/nvim"
alias tmuxrc="vim ~/.config/tmux"
alias kittyrc="vim ~/.config/kitty/kitty.conf"

# brew를 통해 설치한 zsh의 plugin으로 자동완성과 명령어 하이라이트입니다.
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Starship
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm


# nvm이 설치되어 있어야합니다.
# 프로젝내부에 .nvmrc 파일을 인식하여 node를 해당버전으로 변경시킵니다.
# 이외 페이지에 이동시에 nvm alias default 버전으로 변경됩니다.
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
