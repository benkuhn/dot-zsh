#!/bin/zsh

not_focused () {
    # this seems hard to do on Mac, so we optimize for the common case :P
    return 0
}

send_notification () {
    osascript -e "display notification \"$2\" with title \"$1\""
}
