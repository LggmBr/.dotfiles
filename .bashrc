#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\u@\h \W \$ '

eval "$(starship init bash)"
eval "$(zoxide init bash)"
eval "$(fzf --bash)"

alias ls="lsd"
alias passwdfix="faillock --reset"

# PATH Variable
PATH=/home/lggm/.cargo/bin:$HOME/unipdf-cli/cmd/unipdf:$PATH
