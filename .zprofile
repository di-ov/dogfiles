# Profile file, runs on login.

# Setup env
for DOTFILE in `find ~/dogfiles/env`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done


# Start X graphical server only on tty1, don't start if it is already running. 
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx