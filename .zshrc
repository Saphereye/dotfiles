export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS HIST_IGNORE_SPACE SHARE_HISTORY

autoload -Uz compinit && compinit
autoload -Uz edit-command-line
zle -N edit-command-line

bindkey '^e' edit-command-line       # Start editor
bindkey "^[[H"  beginning-of-line    # Home
bindkey "^[[F"  end-of-line          # End
bindkey "^[[3~" delete-char          # Delete
bindkey "^[[1;5C" forward-word       # Ctrl+Right
bindkey "^[[1;5D" backward-word      # Ctrl+Left
bindkey "^[[A"  up-line-or-history   # Up arrow
bindkey "^[[B"  down-line-or-history # Down arrow

alias l='eza --icons'
alias ls='eza --icons'
alias ll='eza -lah --icons --git'
alias la='eza -a --icons'
alias lt='eza --tree --icons'
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

eval "$(starship init zsh)"

fastfetch -l arch2
