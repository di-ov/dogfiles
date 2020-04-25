# Profile file, runs on login.

# System wided env
export EDITOR="micro"
export FILE="pcmanfm"
export TERMINAL="alacritty"


# Start X graphical server only on tty1, don't start if it is already running. 
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx