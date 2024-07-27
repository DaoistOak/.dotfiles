#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
setfont ter-powerline-v14n.psf.gz
HISTFILE="$XDG_CONFIG_HOME"/zsh/.zsh_history
