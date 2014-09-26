#!/bin/zsh

not_focused () {
    # this seems hard to do on Mac, so we optimize for the common case :P
    return 0
}

send_notification () {
    if exists terminal-notifier; then
        APPID=com.googlecode.iTerm2
        terminal-notifier -message "$2" -title "$1" -activate $APPID -sender $APPID
    else
        osascript -e "display notification \"$2\" with title \"$1\""
    fi
}
