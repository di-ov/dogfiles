# xinitrc is sourced when you run "startx"

# Load .Xresources
xrdb ~/.Xresources &

# Here you can start default apps
# nm-applet & # this one is currently ran by i3wm

# Set wallpaper
feh --bg-center ~/.wallpaper.jpg

exec i3