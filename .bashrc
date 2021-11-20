  GNU nano 5.9                                                                                                                                        /home/anabrus/.bashrc                                                                                                                                                  
#    _             _       ____            _
#   / \   _ __ ___| |__   | __ )  __ _ ___| |__  _ __ ___
#  / _ \ | '__/ __| '_ \  |  _ \ / _` / __| '_ \| '__/ __|
# / ___ \| | | (__| | | | | |_) | (_| \__ \ | | | | | (__
#/_/   \_\_|  \___|_| |_| |____/ \__,_|___/_| |_|_|  \___|

# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
shopt -s autocd
# Infinite bash history
HISTSIZE= HISTFILESIZE=
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias p="sudo pacman"
alias g="git clone"

alias sdn="sudo shutdown now"
alias r="ranger"
alias ccat="highlight --out-format=ansi" # Cat files with syntax highlighting
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="youtube-dl --add-metadata -xic" # Download only audio
alias c="clear"
alias cp="cp -iv"


export PATH="$HOME/.scripts:$PATH"


complete -c man which
complete -cf sudo
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
#

