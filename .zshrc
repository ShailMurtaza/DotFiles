# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=5000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/shail/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias vi="vim"
PROMPT='%(?.%F{blue}√.%F{red}?%?)%f %B%F{240}%1~%f%b $ '


alias dotgit="/usr/bin/git --git-dir=\"/home/shail/dotfiles/\" --work-tree=\"/home/shail/\" "

