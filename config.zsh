#!/bin/zsh

# fix line editing in case 
[[ $EMACS = t ]] && unsetopt zle
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ '
autoload colors
colors

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
# share history quickly
setopt share_history
setopt hist_ignore_dups
setopt autocd
setopt nomatch
setopt notify
setopt autopushd
unsetopt beep
bindkey -e

PROMPT=" %{$terminfo[bold]%}%{$fg[cyan]%}%.%(?..%{$fg[red]%} %?)%{$terminfo[sgr0]%} %# "
export EDITOR="emacsclient"
WORDCHARS=${WORDCHARS//[\/\.]}

export PATH=$PATH:~/bin
