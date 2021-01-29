LOOKS_DIR=~/dogfiles/looks

ln -sfv $LOOKS_DIR/.Xresources ~/.Xresources
ln -sfv $LOOKS_DIR/gtk2.0/.gtkrc-2.0 ~/.gtkrc-2.0
ln -sfv $LOOKS_DIR/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini

ln -sfv $LOOKS_DIR/.wallpaper.jpg ~/.wallpaper.jpg

mkdir -pv ~/.fonts && cp -rfv $LOOKS_DIR/fonts/* ~/.fonts/
mkdir -pv ~/.themes && cp -rfv $LOOKS_DIR/themes/* ~/.themes/
mkdir -pv ~/.icons && cp -rfv $LOOKS_DIR/icons/* ~/.icons/

cd ~/.fonts && tar -xzvf fonts.tar.gz
cd ~/.themes && tar -xzvf themes.tar.gz
cd ~/.icons && tar -xzvf icons.tar.gz

rm ~/.fonts/fonts.tar.gz
rm ~/.themes/themes.tar.gz
rm ~/.icons/icons.tar.gz
# Reset font cache
fc-cache -fv