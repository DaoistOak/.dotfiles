#!/bin/bash

# Enable Powerlevel10k instant prompt
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME"/zsh/ohmyzsh

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
plugins=(git zsh-syntax-highlighting autojump zsh-autosuggestions docker docker-compose docker-machine fzf pyenv python tmux ufw zsh-navigation-tools thefuck sudo history-substring-search )

# Source oh-my-zsh and plugins
source $ZSH/oh-my-zsh.sh


eval $(thefuck --alias)

# Custom aliases
alias -g ls='exa --icons -a --color=always --group-directories-first'
alias -g la='exa --icons -al --color=always --group-directories-first'
alias -g cls='clear'
alias -g updt='sudo pacman -Syu'
alias -g updt-aur='sudo aura -Au'
alias -g instl='sudo pacman -Sy'
alias -g instl-aur='sudo aura -A'
alias -g uninstl='sudo pacman -R'
alias -g vi='nvim'
alias -g emacs='emacsclient -c -a 'emacs''
alias -g rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias -g parrot='curl parrot.live'
alias -g portainer='sudo docker start Portainer'
alias -g dotfiles='git --git-dir=/home/shridal/.dotfiles --work-tree=/home/shridal'
alias -g web='qutebrowser'
alias -g weather='curl wttr.in'
# Opening prompt


terminal=$TERM
case $terminal in
  kitty)
	alias -g fetch='neofetch --config ~/.config/neofetch-mine/config.conf'
	;;
  alacritty)
    alias -g fetch='neofetch'
    fish
    ;;
  xterm-256color)
    alias -g fetch='pfetch'
    ;;
  linux)
    alias -g fetch='screenfetch'
    bash
    echo "Changing to Bash!"
    ;;
  *)
    alias -g fetch='screenfetch'
    ;;
esac

# Greater prompt
cermic 1 ~/Pictures/cermic/ 
echo " "

# Emacs configuration
export EDITOR="nvim"
export PATH="$PATH:$HOME/bin"
export HISTFILE="$HOME"/.config/zsh/.zsh_history
# Source custom Powerlevel10k configuration
[[ ! -f ${ZDOTDIR:-~}/.p10k.zsh ]] || source ${ZDOTDIR:-~}/.p10k.zsh
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
