#!/bin/zsh

not_focused () {
    _FRONT=$(osascript -e 'tell application "System Events" to return name of first application process whose frontmost is true')
    if [[ $_FRONT != "iTerm" ]]; then
        return 0
    fi
    _FRONT_TTY=$(osascript -e 'tell application "iTerm" to return tty of current session of current terminal')
    if [[ $_FRONT_TTY = $TTY ]]; then
        return 1
    fi
    return 1
}

send_notification () {
    if exists terminal-notifier; then
        APPID=com.googlecode.iTerm2
        terminal-notifier -message "$2" -title "$1" -activate $APPID -sender $APPID
    else
        osascript -e "display notification \"$2\" with title \"$1\""
    fi
}
