# Lines configured by zsh-newuser-install
#
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000

bindkey -v

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey "^?" backward-delete-char

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/shail/.zshrc'

#autoload -Uz compinit
#compinit

autoload -U colors && colors

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# End of lines added by compinstall
alias vim="nvim"
alias vi="nvim"
alias ls="lsd"
alias screenshot="mate-screenshot -i"
PROMPT='%(?.%F{blue}√.%F{red}?%?)%f %B%F{240}%1~%f%b $ '
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

alias grep="grep --color -i"
alias ssh="kitty +kitten ssh"
alias dotgit="/usr/bin/git --git-dir=\"/home/shail/dotfiles/\" --work-tree=\"/home/shail/\" "
alias gl="git log --oneline"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias edit="sudo -E nvim "
alias update="sudo pacman -Syu --noconfirm"
alias http="sudo systemctl start mariadb httpd && systemctl status mariadb httpd"
#alias pip="pip3 install --break-system-packages"
alias pp="source $HOME/programming/PYTHON/env/bin/activate"

