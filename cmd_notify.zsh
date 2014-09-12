#!/bin/zsh

# hooks to time long running functions and notify me when they're done

exists not_focused || exit
exists send_notification || exit

BK_LAST_TIME=`date +%s`
BK_LAST_COMMAND=""

preexec () {
    BK_LAST_COMMAND="$1"
    BK_LAST_TIME=`date +%s`
}
precmd () {
    if not_focused && [[ $((`date +%s` - BK_LAST_TIME)) > 1 && $BK_LAST_COMMAND != "" ]]; then
        send_notification "Command finished" "$BK_LAST_COMMAND"
        BK_LAST_COMMAND=""
    fi
}
