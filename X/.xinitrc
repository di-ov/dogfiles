# xinitrc runs automatically when you run "startx".

# Load .Xresources
xrdb ~/.Xresources &

# Start default apps
nm-applet &
pcmanfm &

# Set wallpaper
# feh

exec i3