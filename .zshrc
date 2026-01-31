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
alias dotgit="/usr/bin/git --git-dir=\"/home/shail/.dotfiles/\" --work-tree=\"/home/shail/\" "
alias gl="git log --oneline"
alias gs="git status"
alias gc="git commit"
alias gp="git push"
alias edit="sudo -E nvim "
alias update="sudo pacman -Syu --noconfirm"
alias http="sudo systemctl start mariadb httpd && systemctl status mariadb httpd"
alias pp="source $HOME/programming/PYTHON/env/bin/activate"
alias server="python -m http.server"
alias displays="watch -n 1 \"xrandr | awk '/ connected/ {printf \\\"%s %s  \\\", \\\$1, \\\$2}'\""


export NODE_OPTIONS="--dns-result-order=ipv4first"
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export PATH="$HOME/.npm-global/bin:$PATH"

export WINEPREFIX="/home/shail/.wine"
export WAYLAND_DISPLAY=""

source /home/shail/.zsh_extras

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
