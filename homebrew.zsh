#!/bin/zsh

# allow Homebrew bins to shadow system bins
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# TODO make this line portable
source /usr/local/bin/virtualenvwrapper.sh
