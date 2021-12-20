#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return



# Command Histroy
HISTSIZE= HISTFILESIZE=


# Aliases
alias ls='ls --color=auto'
alias v='vim'
alias sv='sudo vim'
alias p='sudo pacman'
alias vsh='vim ~/.bashrc'
alias vwm='vim ~/.config/i3/config'
alias c='clear'
alias sdn='sudo shutdown now'
alias sdr='sudo reboot now'
alias vimrc='vim ~/.vimrc'

# Username Hostname Style
PS1='[\u@\h \W]\$ '


# PATH
export PATH=$PATH:/etc/firewallsetup/

