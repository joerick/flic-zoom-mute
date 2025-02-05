#!/bin/sh

osascript -e '
    if application "zoom.us" is running then
            tell application "System Events" to tell process "zoom.us"
                    if menu item "Stop video" of menu 1 of menu bar item "Meeting" of menu bar 1 exists then
                            click menu item "Stop video" of menu 1 of menu bar item "Meeting" of menu bar 1
                    end if
            end tell
    end if
'
