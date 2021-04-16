#!/bin/sh

osascript -e '
    if application "zoom.us" is running then
            tell application "System Events" to tell process "zoom.us"
                    click menu item "Mute Audio" of menu 1 of menu bar item "Meeting" of menu bar 1
            end tell
    end if
'
