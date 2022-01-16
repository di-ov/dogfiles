# Profile file, runs on login.

# System wide env
export EDITOR="subl"
export FILE="pcmanfm"
export TERMINAL="alacritty"
export EXTERNAL_BIN="/usr/local/bin"

# Start X graphical server only on tty1, don't start if it is already running. 
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx