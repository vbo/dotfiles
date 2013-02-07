#!/bin/bash

# Merge custom X resources
xrdb -merge "${HOME}/.Xresources"

# Play a startup sound, in the background
# ogg123 -q "${HOME}/.config/awesome/login.ogg" &

# Start a terminal emulator in the background
urxvt -T Terminal &

# Set hacker keyboard confs
xset r rate 150 35

# Source scripts in /etc/X11/xinit/xinitrc.d/
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# Run WM
exec ck-launch-session awesome

