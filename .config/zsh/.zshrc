export PATH="$HOME/.cargo/bin:$PATH"

HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY

autoload -Uz compinit && compinit
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

alias l='eza --icons'
alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --icons'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

eval "$(starship init zsh)"

fastfetch -l arch2
