# From the docs:
# Fish_greeting takes care of only being used in interactive shells, so it won’t be used e.g. with scp (which executes a shell), which prevents some errors.
function fish_greeting
    fastfetch -l arch2
    starship init fish | source
end

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
