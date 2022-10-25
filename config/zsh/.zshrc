# fortune -o | cowsay -p -f moose.cow | lolcat
neofetch --config ~/.config/neofetch/arch-small | lolcat
# <<--------- Visuals --------->>
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
ZSH_THEME="robbyrussell"

# <<--------- General Settings --------->>
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="/home/core/.oh-my-zsh"
export VISUAL=nvim;
export EDITOR=nvim;
zstyle ':omz:update' mode auto      # update automatically without asking
plugins=(git archlinux zsh-syntax-highlighting zsh-autosuggestions fzf)
source $ZSH/oh-my-zsh.sh
export MANPATH="/usr/local/man:$MANPATH"
export MUSIC_DIR="/home/core/Media/Music"
export LANG=en_US.UTF-8
export CONDA_AUTO_ACTIVATE_BASE=false

# <<--------- Aliases --------->>
alias lf="lfub"
alias v="nvim"
alias sv="sudo nvim"
alias py="python"
alias jp="ipython"
alias c="clear"
alias zathura="~/.local/bin/zathura"
alias cat="ccat"
alias cp="advcp"
alias mv="advmv"
alias repo="cd ~/Documents/Repositories"
alias spr="tspreed -w 320 -f -b <"
alias vop="nvim ~/.config/polybar/config.ini"
alias vsh="nvim ~/.zshrc"
alias vwm="nvim ~/.config/i3/config"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias vimplug="nvim ~/.config/nvim/plugins.vim"
alias randwall="~/.config/scripts/setbg ~/Media/Pictures/Wallpapers"
alias p="sudo pacman"
alias ax="axel -a -c"
alias fzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias yt="youtube-dl --all-subs --add-metadata -i --output '/home/core/Media/Videos/Youtube/%(title)s.%(ext)s'"
alias yta="yt --audio-format mp3 -x -f bestaudio/best"
alias ytv="youtube-viewer"
alias bib="doi2bib"
alias nf="neofetch --config ~/.config/neofetch/arch-small | lolcat"
alias pbpaste="xsel --clipboard --output"
alias pbcopy="xsel --clipboard --input"
alias cb="cd .."
alias extract="tar -xvf"
alias cards="nvim ~/Documents/Notes/flash/deck.csv"

# <<--------- PATH --------->>
export PATH=$PATH:/home/core/.config/scripts
export PATH="/home/core/.local/bin:$PATH"
export XDG_RUNTIME_DIR=/run/user/$(id -u)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/core/Temp/Programs/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/core/Temp/Programs/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/core/Temp/Programs/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/core/Temp/Programs/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
