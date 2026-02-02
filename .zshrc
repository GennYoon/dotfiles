export ZSH="$HOME/.oh-my-zsh"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ---- fzf ----
eval "$(fzf --zsh)"
# ---- Starship ----
eval "$(starship init zsh)"
# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Alias
alias ls="eza --icons"
alias ll="eza -l -g --icons"
alias ..="cd .."

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias cld="claude"
alias cldd="claude --dangerously-skip-permissions"

