# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# user options
autoload -Uz promptinit
promptinit
prompt_suse_setup

# key bindings
bindkey "^[[3~" delete-char

# additional options
setopt menucomplete
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
setopt correct

# common aliases
alias ls='ls --color=auto'
alias ll='ls -lahF'
alias tree='tree -C'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'

export PATH=$HOME/sbin:$PATH

source $HOME/.zshrc-local
