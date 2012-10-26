#!/bin/bash

# Merge custom X resources
xrdb -merge "${HOME}/.Xresources"

# Play a startup sound, in the background
# ogg123 -q "${HOME}/.config/awesome/login.ogg" &

# Start a terminal emulator in the background
urxvt -T Terminal &

# Set hacker keyboard confs
xset r rate 150 35

# Run WM
exec ck-launch-session awesome

