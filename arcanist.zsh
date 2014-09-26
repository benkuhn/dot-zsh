#!/bin/zsh

ARCANIST=$HOME/apps/phab/arcanist
if [[ -x $ARCANIST ]]; then
    # add Arcanist path to bin
    export PATH=$PATH:$ARCANIST/bin
    # add Arcanist shell completion
    source $ARCANIST/resources/shell/bash-completion
fi
