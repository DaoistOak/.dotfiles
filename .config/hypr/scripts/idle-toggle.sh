#!/usr/bin/env bash

# Check if the script is already inhibiting idle
if [ -f /tmp/idle_inhibited ]; then
    # If inhibited, uninhibit and remove the flag file
    dbus-send --session --print-reply --dest=org.freedesktop.ScreenSaver /org/freedesktop/ScreenSaver org.freedesktop.ScreenSaver.UnInhibit uint32:$(cat /tmp/idle_inhibited)
    rm /tmp/idle_inhibited
    echo "Idle uninhibited"
else
    # If not inhibited, inhibit and store the inhibition cookie in a flag file
    inhibition_cookie=$(dbus-send --session --print-reply --dest=org.freedesktop.ScreenSaver /org/freedesktop/ScreenSaver org.freedesktop.ScreenSaver.Inhibit string:"YourApplicationName" string:"Reason for Inhibition" | awk '/uint32/{print $2}')
    echo $inhibition_cookie > /tmp/idle_inhibited
    echo "Idle inhibited"
fi
