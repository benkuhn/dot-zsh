#!/bin/zsh

thm () {
    # get rid of any other venv if necessary
    declare -f deactivate > /dev/null && deactivate
    workon thm
    local al="$HOME/code/thm"
    #PYTHONPATH="$al/alpha:$al/prosper-data/:$al/pdl-scikit/:$PYTHONPATH"
    PYTHONPATH="$al/alpha:$al/prosper-data/:$PYTHONPATH"
    export PYTHONPATH
    cd $al
}

cr () {
    arc diff -m CAPCR
}
