# <<--------- Visuals --------->>

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
ZSH_THEME="duellj"

# <<--------- General Settings --------->>

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/core/.oh-my-zsh"
export VISUAL=vim;
export EDITOR=vim;
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# <<--------- Aliases --------->>

alias v="nvim"
alias sv="sudo nvim"
alias sdn="sudo shutdown now"
alias c="clear"
alias vsh="nvim ~/.zshrc"
alias vwm="nvim ~/.config/i3/config"
alias vimrc="nvim ~/.vimrc"
alias nvrc="nvim ~/.config/nvim/init.vim"
alias p="sudo pacman"
alias ax="axel -a -c"
alias statis="python ~/.config/scripts/statis.py"
alias mus="ncmpcpp"
alias yt="youtube-dl --add-metadata -i" # Download video link
alias yta="yt -x -f bestaudio/best" # Download Audio only
alias ytv="youtube-viewer"
alias SS="sudo systemctl"
alias bib="doi2bib"
alias cal="cal 2021"
alias night="redshift -P -O 2500"
alias y="yay"
alias nf="neofetch"
alias notes="cd ~/Documents/Notes"
alias cp="cpg -g"
alias pbpaste="xsel --clipboard --output"
alias pbcopy="xsel --clipboard --input"
alias cb="cd .."

# <<--------- PATH --------->>

export PATH=$PATH:/etc/firewallsetup/
export PATH=$PATH:/home/core/.config/scripts
export BIB=/home/core/Documents/Notes/biblo.bib

