export XDG_CONFIG_HOME="$HOME/.config/"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=100000
setopt extendedglob notify
unsetopt autocd beep nomatch
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lggm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

alias batt='upower -e | grep BAT0 | xargs upower -i | grep -E "percentage|state"'

bindkey -s "^f" "$HOME/tmux-sessionizer.sh\n"

