export PATH=/opt/homebrew/bin:$HOME/.nodebrew/current/bin:$HOME/.local/bin:$PATH

eval "$(/opt/homebrew/bin/brew shellenv zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

fpath+=$(brew --prefix)/share/zsh-completions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

autoload -Uz compinit && compinit

alias dc='docker compose'
alias ls='eza'
alias ll='eza -l'
alias la='eza -a'
alias lla='eza -la'
alias cat='bat --style=plain'
alias vim='nvim'
